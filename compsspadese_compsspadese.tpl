{OVERALL_GAME_HEADER}

<!-- 
--------
-- BGA framework: © Gregory Isabelli <gisabelli@boardgamearena.com> & Emmanuel Colin <ecolin@boardgamearena.com>
-- template implementation : © <Your name here> <Your email address here>
-- 
-- This code has been produced on the BGA studio platform for use on http://boardgamearena.com.
-- See http://en.boardgamearena.com/#!doc/Studio for more information.
-------

    heartsla_heartsla.tpl
    
    This is the HTML template of your game.
    
    Everything you are writing in this file will be displayed in the HTML page of your game user interface,
    in the "main game zone" of the screen.
    
    You can use in this template:
    _ variables, with the format {MY_VARIABLE_ELEMENT}.
    _ HTML block, with the BEGIN/END format
    
    See your "view" PHP file to check how to set variables and control blocks
    
    Please REMOVE this comment before publishing your game on BGA
-->

<div id="player-tables">
${
    Object.values(gamedatas.players).map((player, index) => `
    <div class="playertable whiteblock playertable_${DIRECTIONS[orderedPlayers.length][index]}">
        <div class="playertablename" style="color:#${player.color};"><span class="dealer_token" id="dealer_token_p${player.id}">🃏 </span>${player.name}</div>
        <div class="playertablecard" id="playertablecard_${player.id}"></div>
        <div class="playertablename" id="hand_score_wrap_${player.id}"><span class="hand_score_label"></span> <span id="hand_score_${player.id}"></span></div>
    </div>
    `).join('')
}
</div>

<div id="myhand">
<div class="playertablecard"></div>
</div>


<script type="text/javascript">

// Javascript HTML templates

</script>  

{OVERALL_GAME_FOOTER}