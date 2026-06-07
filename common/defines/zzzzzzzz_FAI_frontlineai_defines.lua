-- =====================================================================================
 -- FRONTLINE AI — NDefines Override File
 -- =====================================================================================
 -- Annotation legend:
 --   [FAI]      : FrontlineAI original define (core mod value)
 --   [VNR]      : Value from VNR Navy AI overhaul (navy section)
 --   [BIC]      : Ported from Black Ice mod
 --   [SUPERCHARGER] : Verified to measurably improve AI decision quality
 --   [RISKY]    : Potentially destabilizing — monitor carefully
 -- =====================================================================================

 -- =====================================================================================
 -- AGGRESSIVENESS
 -- =====================================================================================
NDefines.NAI.AGGRESSIVENESS_CHECK_BASE = 1.5  -- vanilla 1.5 | front comparison where ai will consider aggressive stance, unless it is already then the number above is used
NDefines.NAI.AGGRESSIVENESS_CHECK_EASY_TARGET = -0.5  -- vanilla -0.3 | if target nation is flagged as easy target we also adjust down the front comparison needed | [FAI]
NDefines.NAI.AGGRESSIVENESS_CHECK_CAREFUL = 0.7  -- vanilla 0.6 | at what front strength balance do we go careful
NDefines.NAI.AGGRESSIVENESS_CHECK_PARTLY_FORTIFIED = 6.0  -- vanilla 2.0 | if front strength balance is at or above this value versus a party fortified enemy, we do a balanced attack
NDefines.NAI.AGGRESSIVENESS_CHECK_FULLY_FORTIFIED = 13.0  -- vanilla 10 | if front strength balance is at or above this value versus a fully fortified enemy with no weak points, we do a balanced attack instead being careful
NDefines.NAI.AGGRESSIVENESS_CHECK_FULLY_FORTIFIED_POCKET = 7.0  -- vanilla 6 | if front strength balance is at or above this value versus a fully fortified enemy in a pocket, we do a balanced attack instead being careful
NDefines.NAI.AGGRESSIVENESS_CHECK_PARTLY_FORTIFIED_WEAK_POINTS = 1.5  -- vanilla 0.75 | if front strength balance is at or above this value versus a party fortified enemy, we rush attack weak points; below this value, we are careful
NDefines.NAI.AGGRESSIVENESS_BONUS_FOR_FRONTS_THAT_ARE_ON_HIGH_AGGRESSIVENESS = -0.55  -- vanilla -0.4 | AI gets a bonus to aggresiveness if it is already executing an aggressive plan (lower is more aggressive) | [FAI]

 -- =====================================================================================
 -- RESEARCH
 -- =====================================================================================
NDefines.NAI.RESEARCH_DAYS_BETWEEN_WEIGHT_UPDATE = 1  -- vanilla 7 | Refreshes need scores based on country situation.
NDefines.NAI.MAX_AHEAD_RESEARCH_PENALTY = 7  -- vanilla 3 | Max ahead of time penalty AI will ever consider (this also includes BASE_YEAR_AHEAD_PENALTY_FACTOR, so not the raw time)
NDefines.NAI.XP_RATIO_REQUIRED_TO_RESEARCH_WITH_XP = 3.0  -- vanilla 2.0 | AI will at least need this amount of xp compared to cost of a tech to reserch it with XP
NDefines.NAI.RESEARCH_WITH_XP_AI_WEIGHT_MULT = 1.5  -- vanilla 1.2 | AI will bump score of a research with this mult if it can use XP
NDefines.NAI.RESEARCH_NEW_WEIGHT_FACTOR = 0.5                -- vanilla 0.5 | impact of unexplored tech weights; higher = more random exploration
NDefines.NAI.RESEARCH_AHEAD_OF_TIME_FACTOR = 5.0  -- vanilla 4.0 | To which extent AI should care about ahead of time penalties to research
NDefines.NAI.RESEARCH_BASE_DAYS = 60  -- vanilla 60 | AI adds a base number of days when weighting completion time for techs to ensure it doesn't only research quick techs
NDefines.NAI.RESEARCH_YEARS_BEHIND_FACTOR = 0.3  -- vanilla 0.2 | To which extent AI should care about not falling behind (i.e. increase weight for old tech) | [FAI]
NDefines.NAI.RESEARCH_LAND_DOCTRINE_NEED_GAIN_FACTOR = 0.12  -- vanilla 0.15 | Multiplies value based on relative military industry size / country size.
NDefines.NAI.RESEARCH_NAVAL_DOCTRINE_NEED_GAIN_FACTOR = 0.075  -- vanilla 0.05 | Multiplies value based on relative naval industry size / country size.
NDefines.NAI.RESEARCH_AHEAD_BONUS_FACTOR = 10.0  -- vanilla 4.0 | To which extent AI should care about ahead of time bonuses to research
NDefines.NAI.RESEARCH_BONUS_FACTOR = 2.0  -- vanilla 5.0 | To which extent AI should care about research speed bonuses

 -- =====================================================================================
 -- DESIGNS & VARIANT CREATION
 -- =====================================================================================
 -- Land XP thresholds (navy/air overridden in VNR section below)
NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_LAND = 20  -- vanilla 35 | Army XP needed before attempting to create a variant of a type that uses the tank designer (the tank designer DLC feature must be active). | [FAI]
NDefines.NAI.VARIANT_CREATION_XP_RESERVE_LAND = 30  -- vanilla 50 | If the AI lacks army XP to create a variant it will reserve this much XP for variant creation so that it will eventually be able to create a variant. | [FAI]

 -- Tank designer weight factors — AlternativeFactor * DemandFactor determines design weight
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_ABSENT = 1000000  -- vanilla 30000
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_LESSER_TECH = 10000  -- vanilla 10000
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_EQUAL_TECH = 100  -- vanilla 100
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_GREATER_TECH = 1  -- vanilla 1

 -- Demand factors (largest value used when multiple conditions met)
NDefines.NAI.LAND_DESIGN_DEMAND_FIELD_DIVISION = 20  -- vanilla 20
NDefines.NAI.LAND_DESIGN_DEMAND_TRAINING_DIVISION = 15  -- vanilla 15
NDefines.NAI.LAND_DESIGN_DEMAND_GARRISON_DIVISION = 10  -- vanilla 10
NDefines.NAI.LAND_DESIGN_DEMAND_UNUSED_TEMPLATE = 1  -- vanilla 1
NDefines.NAI.LAND_DESIGN_DEMAND_ABSENT = 1  -- vanilla 1

 -- Cutoff: designs below this fraction of max weight are excluded from selection
NDefines.NAI.LAND_DESIGN_CUTOFF_AS_PERCENTAGE_OF_MAX = 0.25  -- vanilla 0.25

 -- =====================================================================================
 -- XP SPENDING DESIRES
 -- =====================================================================================
 -- The AI accumulates desire daily and spends XP on whichever action has highest desire.
 -- Naval/air doctrine and naval equipment XP rates are overridden in the VNR section.
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_LAND_DOCTRINE = 1.0  -- vanilla 0.5 | How quickly is desire to unlock land doctrines accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_AIR_DOCTRINE = 1.0  -- vanilla 0.5 | How quickly is desire to unlock air doctrines accumulated?

NDefines.NAI.DESIRE_USE_XP_TO_UPDATE_LAND_TEMPLATE = 100.0  -- vanilla 2.0 | How quickly is desire to update/create templates accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_LAND_EQUIPMENT = 10.0  -- vanilla 1.0 | How quickly is desire to update/create land equipment variants accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_AIR_EQUIPMENT = 10.0  -- vanilla 1.0 | How quickly is desire to update/create air equipment variants accumulated?

NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_ARMY_SPIRIT = 0.01  -- vanilla 0.35 | How quickly is desire to unlock army spirits accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_NAVY_SPIRIT = 0.01  -- vanilla 0.35 | How quickly is desire to unlock naval spirits accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_AIR_SPIRIT = 0.01  -- vanilla 0.35 | How quickly is desire to unlock air spirits accumulated?

 -- =====================================================================================
 -- RECALCULATION INTERVALS
 -- =====================================================================================
NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_DOCTRINE = 7  -- vanilla 30; | Recalculate desired best doctrine to unlock with this many days inbetween.
NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_TEMPLATE = 5  -- vanilla 7; | Recalculate desired best template to upgrade with this many days inbetween. | [FAI]
NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_EQUIPMENT = 5  -- vanilla 7; | Recalculate desired best equipment to upgrade with this many days inbetween. | [FAI]

 -- =====================================================================================
 -- SPIRIT UNLOCKING
 -- =====================================================================================
NDefines.NAI.UNLOCK_SPIRIT_AI_WILL_DO_FACTOR = 20  -- vanilla 20 | Factor for scripted ai_will_do value
NDefines.NAI.UNLOCK_SPIRIT_MODIFIER_FACTOR = 0.05  -- vanilla 0.05 | Factor for AI's evaluated value of the modifiers connected to the spirit
NDefines.NAI.UNLOCK_SPIRIT_USE_TRUNCATION_SELECT = false  -- vanilla false | Whether to use truncation select or roulette-wheel select. Set threshold for truncation select below.
NDefines.NAI.UNLOCK_SPIRIT_TRUNCATION_SELECT_THRESHOLD = 0.8  -- vanilla 0.80 | Valid between [0.0, 1.0]. When unlocking spirits, select randomly from all spirits with AI score >= VALUE * HighestSpiritScore. To always select the best, set this value to 1.0. To select fully randomly, set this value to 0.0.

 -- =====================================================================================
 -- EQUIPMENT UPGRADE SYSTEM
 -- =====================================================================================
NDefines.NAI.MAX_MODULAR_EQUIPMENT_EQUIPMENT_UPGRADE_COUNT_PER_PASS = 5  -- vanilla 4 | the maximum number of level AI will try to add to an equipment upgrade of an equipment defined in common/ai_equipment in one pass | [FAI]
NDefines.NAI.EQUIPMENT_UPGRADE_VARIANT_MATCH_SCORE_FACTOR = 0.25  -- vanilla 0.2 | the weight of equipment upgrade level when computing the match score of a variant to an ai equipment design. | [FAI]

 -- =====================================================================================
 -- WANTED NUMBER OF DIVISIONS
 -- =====================================================================================
NDefines.NAI.WANTED_UNITS_INDUSTRY_FACTOR = 1.60  -- vanilla 1.60 | How many units a country wants is partially based on how much military industry that is available
NDefines.NAI.WANTED_UNITS_THREAT_BASE = 0.7  -- vanilla 0.7 | If no threat, multiply min wanted units by this
NDefines.NAI.WANTED_UNITS_THREAT_MAX = 6.0  -- vanilla 6.0 | Normalized threat is clamped to this
NDefines.NAI.WANTED_UNITS_WAR_THREAT_FACTOR = 1.15  -- vanilla 1.15 | Factor threat with this if country is at war. this value is overriden by the value in ideology database if that value exceedes this.
NDefines.NAI.WANTED_UNITS_DANGEROUS_NEIGHBOR_FACTOR = 1.15  -- vanilla 1.15 | Factor if has dangerous neighbor
NDefines.NAI.WANTED_UNITS_MANPOWER_DIVISOR = 21000  -- vanilla 21000 | Normalizing divisor for AI manpower. (for each x max available manpower, they want one division)
NDefines.NAI.WANTED_UNITS_WEIGHT_FRONTS_WANT = 0.35  -- vanilla 0.35 | Weight of front needs when computing final nr wanted units
NDefines.NAI.WANTED_UNITS_WEIGHT_FACTORIES = 0.45  -- vanilla 0.45 | Weight of military factories when computing final nr wanted units
NDefines.NAI.WANTED_UNITS_WEIGHT_MANPOWER = 0.3  -- vanilla 0.3 | Weight of manpower availability when computing final nr wanted units
NDefines.NAI.WANTED_UNITS_MIN_DEFENCE_FACTOR = 0.4  -- vanilla 0.4 | Factor on units required for min defence
NDefines.NAI.WANTED_UNITS_MAX_WANTED_CAP = 1000  -- vanilla 500 | Maximum wanted divisions for a country. This can be exceeded by certain hardcoded multipliers, but not by base calculation logic.

 -- =====================================================================================
 -- DIVISION TRAINING & DEPLOYMENT
 -- =====================================================================================
NDefines.NAI.STOP_TRAINING_FULLY_TRAINED_FACTOR = 0.99  -- vanilla 0.95 | ai will not train if at least this ratio of divisions in the army are fully trained
NDefines.NAI.UPGRADE_DIVISION_RELUCTANCE = 5  -- vanilla 7 | How often to consider upgrading to new templates for units in the field
NDefines.NAI.UPGRADE_PERCENTAGE_OF_FORCES = 0.07  -- vanilla 0.20 | How big part of the army that should be considered for upgrading
NDefines.NAI.UPGRADES_DEFICIT_LIMIT_DAYS = 90  -- vanilla 60 | Ai will avoid upgrading units in the field to new templates if it takes longer than this to fullfill their equipment need

NDefines.NAI.LOW_PRIO_TEMPLATE_BONUS_FOR_GARRISONS = 300000  -- vanilla 1000 | bonus to make ai more likely to assign low prio units to garrisons
NDefines.NAI.LOW_PRIO_TEMPLATE_PENALTY_FOR_FRONTS = -2000  -- vanilla 500 | penalty to make ai less likely to assign low prio units to fronts

NDefines.NAI.MIN_FIELD_STRENGTH_TO_BUILD_UNITS = 0.85  -- vanilla 0.7 | Cancel unit production if below this to get resources out to units in the field
NDefines.NAI.MIN_MANPOWER_TO_BUILD_UNITS = 0.5  -- vanilla 0.7 | Cancel unit production if below this to get resources out to units in the field

NDefines.NAI.DEPLOY_MIN_TRAINING_PEACE_FACTOR = 0.95  -- vanilla 0.98 | Required percentage of training (1.0 = 100%) for AI to deploy unit in peacetime
NDefines.NAI.DEPLOY_MIN_TRAINING_WAR_FACTOR = 0.35  -- vanilla 0.95 | Required percentage of training (1.0 = 100%) for AI to deploy unit in wartime
NDefines.NAI.DEPLOY_MIN_TRAINING_SURRENDER_FACTOR = 0.5  -- vanilla 0.5 | Required percentage of training (1.0 = 100%) for AI to deploy unit in wartime while surrender progress is higher than 0

NDefines.NAI.DEPLOY_MIN_EQUIPMENT_PEACE_FACTOR = 0.92  -- vanilla 0.98 | Required percentage of equipment (1.0 = 100%) for AI to deploy unit in peacetime
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_WAR_FACTOR = 0.88  -- vanilla 0.95 | Required percentage of equipment (1.0 = 100%) for AI to deploy unit in wartime
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_SURRENDER_FACTOR = 0.90  -- vanilla 0.90 | Required percentage of equipment (1.0 = 100%) for AI to deploy unit in wartime while surrender progress is higher than 0
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_CAP_DEPLOY_FACTOR = 0.85  -- vanilla 0.85 | If training is capped by equipment deficit and we have reached that cap, deploy unit anyway if percentage is above this (reinforce in field instead).

NDefines.NAI.MAX_AVAILABLE_MANPOWER_RATIO_TO_BUFFER_PEACETIME = 0.1  -- vanilla 0.2 | deployment will try to buffer a ratio of manpower (for reinforcements) during peace time
NDefines.NAI.MAX_AVAILABLE_MANPOWER_RATIO_TO_BUFFER_WARTIME = 0.2  -- vanilla 0.4 | deployment will try to buffer a ratio of manpower (for reinforcements) during war time
NDefines.NAI.DEPLOYED_UNIT_MANPOWER_RATIO_TO_BUFFER_WARTIME = 0.1  -- vanilla 0.2 | deployment will try to buffer a ratio of deployed manpower (for reinforcements) during war time
NDefines.NAI.DEPLOYED_UNIT_MANPOWER_RATIO_TO_BUFFER_PEACETIME = 0.1  -- vanilla 0.1 | deployment will try to buffer a ratio of deployed manpower (for reinforcements) during peace time

 -- =====================================================================================
 -- TRAINING THRESHOLDS
 -- =====================================================================================
NDefines.NAI.START_TRAINING_EQUIPMENT_LEVEL = 0.25  -- vanilla 0.40 | ai will not start to train if equipment drops below this level
NDefines.NAI.STOP_TRAINING_EQUIPMENT_LEVEL = 0.10  -- vanilla 0.25 | ai will not train if equipment drops below this level
NDefines.NAI.START_TRAINING_SUPPLY_LEVEL = 0.25  -- vanilla 0.40 | ai will not start to train if supply ratio drops below this level
NDefines.NAI.STOP_TRAINING_SUPPLY_LEVEL = 0.15  -- vanilla 0.30 | ai will not train if supply ratio drops below this level

 -- Navy/air training fuel ratios are overridden in VNR section

 -- =====================================================================================
 -- EQUIPMENT PRODUCTION
 -- =====================================================================================
NDefines.NAI.NEEDED_NAVAL_FACTORIES_EXPENSIVE_SHIP_BONUS = 1000  -- vanilla 12 | Amount of naval yards you need to get a bonus to building really expensive ships
NDefines.NAI.PRODUCTION_WAIT_TO_FINISH_IF_CHEAP = 0.75  -- vanilla 0.75 | If produced item is cheap (producing more than one/week), wait to finish item if progress is above this

NDefines.NAI.NAVAL_BASES_SHIP_FACTOR = 1000                        -- vanilla 1000 | naval bases weigh into desired ship count
NDefines.NAI.NAVAL_STATES_SHIP_FACTOR = 1000                       -- vanilla 1000 | states weigh into desired ship count

NDefines.NAI.PRODUCTION_UNAVAILABLE_RESORCE_FACTORY_FACTOR = 0.5   -- vanilla 0.5

NDefines.NAI.RAILWAY_GUN_PRODUCTION_BASE_DIVISIONS_RATIO_PERCENT = 5  -- vanilla 0 | Base ratio of desired railway guns to divisions for AI (5 means 5%). Can be modified by railway_guns_divisions_ratio AI strategy value
NDefines.NAI.RAILWAY_GUN_PRODUCTION_MIN_DIVISONS = 50  -- vanilla 20 | Minimum required number of divisions for the AI to consider producing railway guns
NDefines.NAI.RAILWAY_GUN_PRODUCTION_MIN_FACTORIES = 25  -- vanilla 10 | Minimum required number of military factories for the AI to consider producing railway guns

NDefines.NAI.PRODUCTION_EQUIPMENT_SURPLUS_FACTOR = 0.25  -- vanilla 0.8 | Base value for how much of currently used equipment the AI will at least strive to have in stock | [BIC]
NDefines.NAI.PRODUCTION_EQUIPMENT_SURPLUS_FACTOR_GARRISON = 0.25  -- vanilla 0.3 | Base value for how much of currently used equipment the AI will at least strive to have in stock for garrison forces | [BIC]
NDefines.NAI.PRODUCTION_LINE_SWITCH_SURPLUS_NEEDED_MODIFIER = 0.15  -- vanilla 0.2 | Is modified by efficency modifiers. | [BIC]

NDefines.NAI.PRODUCTION_CARRIER_PLANE_BUFFER_RATIO = 1.5  -- vanilla 1.5 | in addition to total deck size of carriers, we want at least this ratio to buffer it | [BIC]
NDefines.NAI.PRODUCTION_CARRIER_PLANE_PRODUCTION_BOOST_TO_BUFFER = 4.0  -- vanilla 4.0 | production of carrier planes will go up by this ratio if we lack buffers | [BIC]

NDefines.NAI.DEFAULT_SUPPLY_TRAIN_NEED_FACTOR = 1.25  -- vanilla 1.2 | AI multiplies current train usage by this to determine desired nr of wanted trains. Can be modified by wanted_supply_train min_wanted_supply_trains ai strats. | [BIC]
NDefines.NAI.OPERATION_EQUIPMENT_NEED_PRODUCTION_MULT = 1.0  -- vanilla 1.0 | equipment requests for operations will be added the equipment needs that ai considers while assigning factories to production | [BIC]

 -- =====================================================================================
 -- DIPLOMACY
 -- =====================================================================================
NDefines.NAI.DIPLOMACY_SEND_MAX_FACTION = 0.0  -- vanilla 0.75 | Country should not send away more units than this as expeditionaries
NDefines.NAI.MAX_REQUEST_EXPEDITIONARIES_ARMY_RATIO = 0.0  -- vanilla 0.3 | AI will not accept expeditionary requests if its expeditions are above this ratio
NDefines.NAI.GENERATE_WARGOAL_THREAT_BASELINE = 0.6  -- vanilla 1.0 | The baseline for what the AI considers the world is getting dangerous and we want to generate wargoals with no antagonize value
NDefines.NAI.DIPLOMACY_REJECTED_WAIT_MONTHS_BASE = 1  -- vanilla 4 | AI will not repeat offers until at least this time has passed, and at most the double

NDefines.NAI.SEND_VOLUNTEER_EVAL_BASE_DISTANCE = 175.0  -- vanilla 175.0 | How far away it will evaluate sending volunteers if not a major power
NDefines.NAI.SEND_VOLUNTEER_EVAL_MAJOER_POWER = 1.0  -- vanilla 1.0 | How willing major powers are to send volunteers.
NDefines.NAI.SEND_VOLUNTEER_EVAL_CONTAINMENT_FACTOR = 0.2  -- vanilla 0.1 | How much AI containment factors into its evaluation of sending volunteers.

NDefines.NAI.DIPLO_PREFER_OTHER_FACTION = -400  -- vanilla -200 | The country has yet to ask some other faction it would prefer to be a part of. | [FAI]
NDefines.NDiplomacy.NOT_READY_FOR_WAR_BASE = -500  -- vanilla -50 | AI should be unwilling to enter accept a call to war if not ready for war against the relevant enemies. | [FAI]

 -- =====================================================================================
 -- POLITICAL POWER & CHIEFS
 -- =====================================================================================
NDefines.NAI.CHIEF_ADDED_WEIGHT_FACTOR = 6.5  -- vanilla 2.4 | Weight multiplier for chief roles over other advisor or idea types | [FAI]
NDefines.NAI.ARMY_CHIEF_SCORE_MULTIPLIER = 2.5  -- vanilla 1.0 | score multiplier for hiring an army chief | [FAI]
NDefines.NAI.AIR_CHIEF_SCORE_MULTIPLIER = 25.0  -- vanilla 1.0 | score multiplier for hiring an air chief | [FAI]
NDefines.NAI.NAVY_CHIEF_SCORE_MULTIPLIER = 40.5  -- vanilla 1.0 | score multiplier for hiring an navy chief | [FAI]

 -- =====================================================================================
 -- LAND AI — FRONT MANAGEMENT & UNIT ASSIGNMENT
 -- =====================================================================================
NDefines.NAI.EASY_TARGET_FRONT_IMPORTANCE = 5.0  -- vanilla 7.5 | How much extra focus the AI should put on who it considers to be the easiest target.
NDefines.NAI.MAIN_ENEMY_FRONT_IMPORTANCE = 4.0  -- vanilla 4.0 | How much extra focus the AI should put on who it considers to be its current main enemy.

NDefines.NAI.ASSIGN_TANKS_TO_WAR_FRONT = 60.0  -- vanilla 6.0 | Scoring factor for assigning divisions with 'role = armor' or 'front_role_override = offence' to active war fronts | [FAI] [SUPERCHARGER]
NDefines.NAI.ASSIGN_TANKS_TO_NON_WAR_FRONT = 0.1  -- vanilla 0.4 | Scoring factor for assigning divisions with 'role = armor' or 'front_role_override = offence' to non-war fronts | [FAI]
NDefines.NAI.ASSIGN_TANKS_TO_MOUNTAINS = -10.0  -- vanilla -6.0 | factor for assigning tank divisions to fronts with mountains (proportional to how much of that terrain type)
NDefines.NAI.ASSIGN_TANKS_TO_JUNGLE = -10.0  -- vanilla -6.0 | factor for assigning tank divisions to fronts with jungle (proportional to how much of that terrain type)
NDefines.NAI.ASSIGN_MOUNTAINEERS_TO_MOUNTAINS = 50.0  -- vanilla 10.0 | factor for assigning mountaineer divisions to fronts with mountains (proportional to how much of that terrain type)

NDefines.NAI.UPDATE_SUPPLY_MOTORIZATION_FREQUENCY_HOURS = 20  -- vanilla 52; | Check if activating motorization would improve supply situation this often. | [FAI]

NDefines.NAI.CANCEL_COMBAT_DISADVANTAGE_RATIO = 1.35  -- vanilla 1.5 | If the enemy's advantage ratio over us during (normal) combat is more than <value>, allow canceling the attack | [FAI]
NDefines.NAI.CANCEL_COMBAT_MIN_DURATION_HOURS = 72  -- vanilla 48 | Only allow cancelling (normal) combat if at least <value> hours have passed | [FAI]
NDefines.NAI.CANCEL_INVASION_COMBAT_DISADVANTAGE_RATIO = 3.0  -- vanilla 3.5 | If the enemy's advantage ratio over us during invasion combat is more than <value>, allow canceling the attack | [FAI]
NDefines.NAI.CANCEL_INVASION_COMBAT_MIN_DURATION_HOURS = 168  -- vanilla 720 | Only allow cancelling invasion combat if at least <value> hours have passed | [FAI]

NDefines.NAI.REDEPLOY_DISTANCE_VS_ORDER_SIZE = 0.6  -- vanilla 1.0 | Factor applied to the path length of a unit compared to length of an order to determine if it should use strategic redeployment
NDefines.NAI.UNIT_ASSIGNMENT_TERRAIN_IMPORTANCE = 20.0  -- vanilla 10.0 | Terrain score for units are multiplied by this when the AI is deciding which front they should be assigned to

NDefines.NAI.FORTIFIED_RATIO_TO_CONSIDER_A_FRONT_FORTIFIED = 0.45  -- vanilla 0.5 | ai will consider a front fortified if this ratio of provinces has fort
NDefines.NAI.HEAVILY_FORTIFIED_RATIO_TO_CONSIDER_A_FRONT_FORTIFIED = 0.6  -- vanilla 0.5 | ai will consider a front super fortified if this ratio of provinces has lots of forts
NDefines.NAI.FORTIFIED_MIN_ORG_FACTOR_TO_CONSIDER_A_FRONT_FORTIFIED = 0.55  -- vanilla 0.2 | ai will treat fortified provinces as unfortified if no unit in that province has an organization factor at least this high | [FAI]

NDefines.NAI.DYNAMIC_STRATEGIES_THREAT_FACTOR = 8.0  -- vanilla 4.0 | How much threat generated by other countries effects generated strategies
NDefines.NAI.BASE_DISTANCE_TO_CARE = 400.0  -- vanilla 600.0 | Countries that are too far away are less interesting in diplomacy

NDefines.NAI.FRONT_EVAL_UNIT_ACCURACY = 3.5  -- vanilla 1.0 | scale how stupid ai will act on fronts. 0 is potato | [FAI] [SUPERCHARGER]
NDefines.NAI.PLAN_STEP_COST_LIMIT = 200  -- vanilla 9 | When stepping to draw a plan this cost makes it break if it hits hard terrain (multiplied by number of desired steps) | [FAI] [SUPERCHARGER]
NDefines.NAI.PLAN_STEP_COST_LIMIT_REDUCTION = 2  -- vanilla 3 | Cost limit is reduced per iteration, making hard terrain less likely to be crossed the further into enemy territory it is | [FAI]
NDefines.NAI.PLAN_ATTACK_DEPTH_FACTOR = 0.25  -- vanilla 0.5 | Factor applied to size or enemy being attacked. | [FAI]
NDefines.NAI.MIN_AI_UNITS_PER_TILE_FOR_STANDARD_COHESION = 2.5  -- vanilla 1.5 | How many units should we have for each tile along a front in order to switch to standard cohesion (less moving around)

NDefines.NAI.FRONT_CUTOFF_MIN_EDGE_PROXIMITY = 2  -- vanilla 2 | Minimum number of provinces to the front edge to determine for cutoff oportunity.
NDefines.NAI.FRONT_BULGE_RATIO_LOWER_CUTOFF = 0.85  -- vanilla 0.95 | If local bulginess drops below this, a point of interest is found | [FAI]
NDefines.NAI.FRONT_BULGE_RATIO_UPPER_CUTOFF = 1.4  -- vanilla 1.5 | If total bulginess is lower than this, the front is ignored. | [FAI]

NDefines.NAI.ASSIGN_FRONT_ARMY_SOFT_ATTACK_FACTOR = 0.1  -- vanilla 0.1 | Importance of unit's ARMY_SOFT_ATTACK stat when assigning to a front
NDefines.NAI.ASSIGN_FRONT_ARMY_HARD_ATTACK_FACTOR = 0.1  -- vanilla 0.1 | Importance of unit's ARMY_HARD_ATTACK stat when assigning to a front
NDefines.NAI.ASSIGN_FRONT_ARMY_BREAKTHROUGH_FACTOR = 0.1  -- vanilla 0.2 | Importance of unit's ARMY_BREAKTHROUGH stat when assigning to a front
NDefines.NAI.ASSIGN_DEFENSE_ARMY_DEFENSE_FACTOR = 3.0  -- vanilla 3.0 | Importance of unit's ARMY_DEFENSE stat when assigning to an area defense order
NDefines.NAI.ASSIGN_DEFENSE_ARMY_ENTRENCHMENT_FACTOR = 2.0  -- vanilla 2.0 | Importance of unit's ARMY_ENTRENCHMENT stat when assigning to an area defense order
NDefines.NAI.ASSIGN_DEFENSE_TEMPLATE_CLASS_SCORE = 3.0  -- vanilla 3.0 | Importance of unit's AI template class (AREA_DEFENSE, CAVALRY) when assigning to an area defense order
NDefines.NAI.ASSIGN_INVASION_AMPHIBIOUS_ATTACK_FACTOR = 50.0  -- vanilla 50.0 | Importance of unit's amphibious attack adjuster when assigning to an invasion order
NDefines.NAI.ORDER_ASSIGNMENT_DISTANCE_FACTOR = 100.0  -- vanilla 100.0 | When the AI assigns units to orders, how much should distance be taken into account?
NDefines.NAI.UNIT_ASSIGNMENT_STATS_IMPORTANCE = 2.0  -- vanilla 3.0 | Stats score for units are multiplied by this when the AI is deciding which front they should be assigned to

NDefines.NAI.ASSIGN_FRONT_TERRAIN_ATTACK_FACTOR = 0.1  -- vanilla 3.0 | Importance of unit's terrain adjusted attack stat when assigning to a front
NDefines.NAI.ASSIGN_FRONT_TERRAIN_DEFENSE_FACTOR = 0.1  -- vanilla 1.0 | Importance of unit's terrain adjusted defense stat when assigning to a front
NDefines.NAI.ASSIGN_FRONT_TERRAIN_MOVEMENT_FACTOR = 0.1  -- vanilla 2.0 | Importance of unit's terrain adjusted movement stat when assigning to a front
NDefines.NAI.ASSIGN_DEFENSE_TERRAIN_ATTACK_FACTOR = 0.5  -- vanilla 0.5 | Importance of unit's terrain adjusted attack stat when assigning to an area defense order
NDefines.NAI.ASSIGN_DEFENSE_TERRAIN_DEFENSE_FACTOR = 4.0  -- vanilla 4.0 | Importance of unit's terrain adjusted defense stat when assigning to an area defense order
NDefines.NAI.ASSIGN_DEFENSE_TERRAIN_MOVEMENT_FACTOR = 0.5  -- vanilla 0.5 | Importance of unit's terrain adjusted movement stat when assigning to an area defense order

NDefines.NAI.ENEMY_FORTIFICATION_FACTOR_FOR_FRONT_REQUESTS = 1.0  -- vanilla 2.0 | front unit request factor at max enemy fortification
NDefines.NAI.ENEMY_FORTIFICATION_FACTOR_FOR_FRONT_REQUESTS_MAX = 0.1  -- vanilla 0.7 | max factor that can be added by enemy fortification
NDefines.NAI.AI_FRONT_MOVEMENT_FACTOR_FOR_READY = 0.25  -- vanilla 0.25 | If less than this fraction of units on a front is moving, AI sees it as ready for action

NDefines.NAI.DIVISION_SUPPLY_RATIO_TO_MOTORIZE = 0.90  -- vanilla 0.80 | If supply ratio is less than this, consider motorizing any applicable nearby supply hub
NDefines.NAI.ENTRENCHMENT_WEIGHT = 5.0  -- vanilla 2.0 | AI should favour units with less entrenchment when assigning units around.
NDefines.NAI.MAX_MICRO_ATTACKS_PER_ORDER = 32  -- vanilla 3 | AI goes through its orders and checks if there are situations to take advantage of
NDefines.NAI.MICRO_POCKET_SIZE = 8  -- vanilla 4 | Pockets with a size equal to or lower than this will be mocroed by the AI, for efficiency.
NDefines.NAI.POCKET_DISTANCE_MAX = 6000  -- vanilla 40000 | shortest square distance we bother about chasing pockets

NDefines.NAI.MIN_PLAN_VALUE_TO_MICRO_INACTIVE = 0.0  -- vanilla 0.25 | The AI will not consider members of groups which plan is not activated AND evaluates lower than this.
NDefines.NAI.FRONT_UNITS_CAP_FACTOR = 13.0  -- vanilla 15.0 | A factor applied to total front size and supply use. Primarily effects small fronts
NDefines.NAI.RAIDS_CREATE_FREQUENCY_DAYS = 20  -- vanilla 7 | How often will AI run its raid creation logic. Lowering this number may decrease performance.
NDefines.NAI.RAIDS_COMMAND_POWER_CAP_TO_CREATE = 150.0  -- vanilla 60.0 | The AI will only try to create new raids if the command power cap is at least this.
NDefines.NAI.COMMAND_POWER_BEFORE_SPEND_ON_TRAITS = 10.0  -- vanilla 30.0

NDefines.NAI.PLAN_FRONT_SECTION_MAX_LENGTH = 8                    -- vanilla 10
NDefines.NAI.PLAN_FRONT_SECTION_MIN_LENGTH = 3                     -- vanilla 5

NDefines.NAI.MANPOWER_RATIO_CAREFULNESS_THRESHOLD = 0.15  -- vanilla 0.05 | if manpower ratio (available/used-by-army) is less than this, start being more careful with plan execution (i.e. don't throw your men into the meat grinder if you're running out of manpower) | [FAI]
NDefines.NAI.DEFAULT_SUPPLY_TRUCK_BUFFER_RATIO = 2.0  -- vanilla 1.5 | ai will set to truck buffer ratio to this. can be modified by wanted_supply_trucks min_wanted_supply_trucks ai strats | [FAI]

 -- =====================================================================================
 -- FRONT COHESION & WAR READINESS
 -- =====================================================================================
NDefines.NAI.DECLARE_WAR_MIN_FRONT_SIZE_TO_CONSIDER_FOR_NOT_READY = 0.08  -- vanilla 0.04 | fronts with less armies than this ratio compared to total number of armies are ignored when ai checks if it is ready for war | [FAI]
NDefines.NAI.MIN_FRONT_SIZE_TO_CONSIDER_STANDARD_COHESION = 12  -- vanilla 12 | How long should fronts be before we consider switching to standard cohesion (under this, standard cohesion fronts will switch back to relaxed) | [FAI]
NDefines.NAI.MIN_SUPPLY_USE_SANITY_CAP = 150  -- vanilla 100 | Ignore supply cap if below this value when deciding on how many divisions to produce. | [FAI]

 -- =====================================================================================
 -- UNIT ORG / STR CLASSIFICATION THRESHOLDS
 -- =====================================================================================
 -- Org thresholds: vanilla WEAK 0.25 / NORMAL 0.35 / STRONG 0.75
NDefines.NAI.ORG_UNIT_WEAK = 0.3  -- vanilla 0.25 | Organization % for unit to be considered weak | [FAI]
NDefines.NAI.ORG_UNIT_NORMAL = 0.50  -- vanilla 0.35 | Organization % for unit to be considered normal | [FAI]
NDefines.NAI.ORG_UNIT_STRONG = 0.75  -- vanilla 0.75 | Organization % for unit to be considered strong

 -- Str thresholds: vanilla WEAK 0.30 / NORMAL 0.40 / STRONG 0.70
NDefines.NAI.STR_UNIT_WEAK = 0.4  -- vanilla 0.30 | Strength (equipment) % for unit to be considered weak | [FAI]
NDefines.NAI.STR_UNIT_NORMAL = 0.6  -- vanilla 0.4 | Strength (equipment) % for unit to be considered normal | [FAI]
NDefines.NAI.STR_UNIT_STRONG = 0.75  -- vanilla 0.70 | Strength (equipment) % for unit to be considered strong | [FAI]

 -- Plan attack minimum org thresholds by aggression mode (HIGH=aggressive, MED=balanced, LOW=careful)
 -- Note: these affect both AI and player battleplanner
NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_HIGH = 0.3  -- vanilla 0.45
NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_MED = 0.40  -- vanilla 0.7 | (LOW,MED,HIGH) corresponds to the plan execution agressiveness level.
NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_LOW = 0.60  -- vanilla 0.85 | Minimum org % for a unit to actively attack an enemy unit when executing a plan

NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_HIGH = 0.5  -- vanilla 0.30
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_MED = 0.6  -- vanilla 0.50
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_LOW = 0.75  -- vanilla 0.60 | Minimum strength for a unit to actively attack an enemy unit when executing a plan

NDefines.NAI.GARRISON_FRACTION = 0.0  -- vanilla 0.0 | How large part of a front should always be holding the line rather than advancing at the enemy | [FAI] [RISKY]
NDefines.NAI.LOCATION_BALANCE_TO_ADVANCE = 0.1  -- vanilla 0.0 | Limit on location strength balance between country and enemy for unit to dare to move forward.

 -- =====================================================================================
 -- CAREFUL AI MODE OVERRIDES
 -- =====================================================================================
NDefines.NAI.PLAN_EXECUTE_CAREFUL_LIMIT = 5  -- vanilla 25 | When looking for an attack target, this score limit is required in the battle plan to consider province for attack | [FAI]
NDefines.NAI.PLAN_EXECUTE_CAREFUL_MAX_FORT = 3  -- vanilla 5 | If execution mode is set to careful, units will not attack provinces with fort levels greater than or equal to this | [FAI]

 -- =====================================================================================
 -- BATTLEPLANNER — ATTACK SCORING & PROVINCE IMPORTANCE
 -- =====================================================================================
NDefines.NMilitary.PLAN_BLITZ_OPTIMISM = 0.4  -- vanilla 0.2 | Additional combat balance value in favor of blitzing side when considering targets (not a combat bonus, just offsets planning) | [FAI]
NDefines.NMilitary.MIN_BALANCE_SCORE_TO_PROCEED_ATTACK = 0.25  -- vanilla 0.2 | --A combat balance score of less than this will prevent auto attacking | [FAI]

NDefines.NMilitary.PLAN_SPREAD_ATTACK_WEIGHT = 300.0  -- vanilla 12.0 | The higher the value, the less it should crowd provinces with multiple attacks. | [FAI]
NDefines.NMilitary.PLAN_MIN_AUTOMATED_EMPTY_POCKET_SIZE = 20  -- vanilla 2 | The battle plan system will only automatically attack provinces in pockets that has no resistance and are no bigger than these many provinces | [FAI]
NDefines.NMilitary.FRONTLINE_EXPANSION_FACTOR = 0.0  -- vanilla 0.6 | When attacking along a frontline, how much should units spread out as they advance. 0.0 means head (more or less) directly to the drawn frontline, with no distractions | [FAI]
NDefines.NMilitary.FRONT_MIN_PATH_TO_REDEPLOY = 4  -- vanilla 8 | If a units path is at least this long to reach its front location, it will strategically redeploy. | [FAI]

NDefines.NAI.PLAN_MIN_SIZE_FOR_FALLBACK = 5000  -- vanilla 50 | A country with less provinces than this will not draw fallback plans, but rather station their troops along the front | [FAI]
NDefines.NAI.FALLBACK_LOSING_FACTOR = 1.0  -- vanilla 1.0 | The lower this number, the longer the AI will hold the line before sending them to the fallback line

 -- Front province importance — VP tiers
NDefines.NMilitary.PLAN_PROVINCE_LOW_VP_IMPORTANCE_AREA = 4.0      -- vanilla 4.0
NDefines.NMilitary.PLAN_PROVINCE_MEDIUM_VP_IMPORTANCE_AREA = 6.0   -- vanilla 6.0
NDefines.NMilitary.PLAN_PROVINCE_HIGH_VP_IMPORTANCE_AREA = 20.0    -- vanilla 20.0

 -- Front province importance — infrastructure
NDefines.NMilitary.PLAN_PROVINCE_PORT_BASE_IMPORTANCE = 15.0       -- vanilla 9.0 | [FAI] raised port importance significantly
NDefines.NMilitary.PLAN_PROVINCE_PORT_LEVEL_FACTOR = 0.5           -- vanilla 0.5
NDefines.NMilitary.PLAN_PROVINCE_AIRFIELD_BASE_IMPORTANCE = 3.0    -- vanilla 3.0
NDefines.NMilitary.PLAN_PROVINCE_AIRFIELD_POPULATED_FACTOR = 1.5   -- vanilla 1.5
NDefines.NMilitary.PLAN_PROVINCE_AIRFIELD_LEVEL_FACTOR = 0.25      -- vanilla 0.25
NDefines.NMilitary.PLAN_PROVINCE_RESISTANCE_BASE_IMPORTANCE = 10.0 -- vanilla 10.0

 -- =====================================================================================
 -- BATTLEPLANNER — AREA DEFENSE PROVINCE SCORING
 -- =====================================================================================
NDefines.NMilitary.PLAN_PROVINCE_BASE_IMPORTANCE = 4.0  -- vanilla 2.0 | Used when calculating the calue of front and defense area provinces for the battle plan system
NDefines.NMilitary.PLAN_PROVINCE_LOW_VP_IMPORTANCE_FRONT = 4.0  -- vanilla 2.0 | Used when calculating the calue of fronts in the battle plan system
NDefines.NMilitary.PLAN_PROVINCE_MEDIUM_VP_IMPORTANCE_FRONT = 4.5  -- vanilla 2.25 | Used when calculating the calue of fronts in the battle plan system
NDefines.NMilitary.PLAN_PROVINCE_HIGH_VP_IMPORTANCE_FRONT = 5.0  -- vanilla 2.75 | Used when calculating the calue of fronts in the battle plan system

NDefines.NMilitary.PLAN_NEIGHBORING_ENEMY_PROVINCE_FACTOR = 0.35  -- vanilla 0.7 | When calculating the importance of provinces, it takes number of enemy provinces into account, factored by this | [BIC]
NDefines.NMilitary.PLAN_SHARED_FRONT_PROV_IMPORTANCE_FACTOR = 0.65  -- vanilla 0.8 | If fornt orders share end provinces, they should each have a somewhat reduced prio due to it being shared.
NDefines.NMilitary.PLAN_PROVINCE_VP_PORT_FACTOR = 0.25  -- vanilla 0.25

NDefines.NMilitary.MIN_VP_NEEDED_FOR_DEFENSE_ORDER_ASSIGNMENTS = 1.0  -- vanilla 1.0 | For area devense VP orders, ignore provinces with VP <= this value

NDefines.NMilitary.PLAN_PROVINCE_LOW_VP_DEFENSE_THRESHOLD = 2.0  -- vanilla 2.0 | For area defense VP orders, what are the thresholds for "low", "medium" and "high" VP values
NDefines.NMilitary.PLAN_PROVINCE_MEDIUM_VP_DEFENSE_THRESHOLD = 8.0  -- vanilla 8.0 | see above
NDefines.NMilitary.PLAN_PROVINCE_HIGH_VP_DEFENSE_THRESHOLD = 25.0  -- vanilla 25.0 | see above
NDefines.NMilitary.PLAN_PROVINCE_LOW_VP_DEFENSE_IMPORTANCE = 2.0  -- vanilla 2.0 | For area defense VP orders, use this value for relative importance
NDefines.NMilitary.PLAN_PROVINCE_MEDIUM_VP_DEFENSE_IMPORTANCE = 5.0  -- vanilla 5.0 | see above
NDefines.NMilitary.PLAN_PROVINCE_HIGH_VP_DEFENSE_IMPORTANCE = 10.0  -- vanilla 10.0 | see above
NDefines.NMilitary.PLAN_PROVINCE_CAPITAL_DEFENSE_IMPORTANCE = 50.0  -- vanilla 50.0 | For area defense VP orders, boost importance value with this if it's the capital

NDefines.NMilitary.PLAN_PORVINCE_PORT_BASE_IMPORTANCE = 8.0  -- vanilla 12.0 | Added importance for area defense province with a port | [FAI]
NDefines.NMilitary.PLAN_PORVINCE_PORT_LEVEL_FACTOR = 2.5  -- vanilla 1.5 | Bonus factor for port level | [FAI]
NDefines.NMilitary.PLAN_PORVINCE_AIRFIELD_BASE_IMPORTANCE = 2.0  -- vanilla 3.0 | Added importance for area defense province with air field
NDefines.NMilitary.PLAN_PORVINCE_AIRFIELD_POPULATED_FACTOR = 1.5  -- vanilla 1.5 | Bonus factor when an airfield has planes on it
NDefines.NMilitary.PLAN_PORVINCE_RESISTANCE_BASE_IMPORTANCE = 0.0  -- vanilla 10.0 | Used when calculating the calue of defense area provinces for the battle plan system (factored by resistance level)
NDefines.NMilitary.PLAN_AREA_DEFENSE_HAS_RAIL_IMPORTANCE = 1.5  -- vanilla 1.5 | Used when calculating the value of defense area provinces for the battle plan system
NDefines.NMilitary.PLAN_AREA_DEFENSE_HAS_SUPPLY_NODE = 14.0  -- vanilla 20.0 | Used when calculating the value of defense area provinces for the battle plan system
NDefines.NMilitary.PLAN_AREA_DEFENSE_FACILITY = 15.0  -- vanilla 15.0 | Used when calculating the value of defense area provinces for the battle plan system

NDefines.NMilitary.PLAN_AREA_DEFENSE_ENEMY_CONTROLLER_SCORE = 15.0  -- vanilla 25.0 | Score applied to provinces in the defense area order controlled by enemies
NDefines.NMilitary.PLAN_AREA_DEFENSE_ENEMY_UNIT_FACTOR = -2.0  -- vanilla -2.0 | Factor applied to province score in area defense order per enemy unit in that province
NDefines.NMilitary.PLAN_AREA_DEFENSE_FORT_IMPORTANCE = 0.25  -- vanilla 0.25 | Used when calculating the value of defense area provinces for the battle plan system, works as multipliers on the rest
NDefines.NMilitary.PLAN_AREA_DEFENSE_COASTAL_FORT_IMPORTANCE = 3.0  -- vanilla 3.0 | Used when calculating the value of defense area provinces for the battle plan system
NDefines.NMilitary.PLAN_AREA_DEFENSE_COAST_NO_FORT_IMPORTANCE = 1.1  -- vanilla 1.1 | Used when calculating the value of defense area provinces for the battle plan system

 -- Unit stickiness and distribution
NDefines.NMilitary.PLAN_STICKINESS_FACTOR = 95.0  -- vanilla 100.0 | Factor used in unitcontroller when prioritizing units for locations
NDefines.NMilitary.PLAN_STICKINESS_IGNORE_STACK_LIMIT = 1          -- vanilla 0 | [FAI] players can override stack limit priority

NDefines.NMilitary.PLAN_PROVINCE_PRIO_DISTRIBUTION_MIN = 0.7  -- vanilla 0.7 | Lowest fraction of divisions that will be distributed based on province priority
NDefines.NMilitary.PLAN_PROVINCE_PRIO_DISTRIBUTION_MAX = 1.0  -- vanilla 1.0 | Highest fraction of divisions that will be distributed based on province priority
NDefines.NMilitary.PLAN_PROVINCE_PRIO_DISTRIBUTION_DPP_HIGH = 4.0  -- vanilla 3.0 | At what divisions per province should we use PLAN_PROVINCE_PRIO_DISTRIBUTION_MIN
NDefines.NMilitary.PLAN_PROVINCE_PRIO_DISTRIBUTION_DPP_LOW = 1.5  -- vanilla 2.0 | At what divisions per province should we use PLAN_PROVINCE_PRIO_DISTRIBUTION_MAX

 -- Supply check per execution mode (careful/balanced/rush/skip/weak rush)
NDefines.NMilitary.PLAN_EXECUTE_SUPPLY_CHECK = { 1.0, 0.0, 0.0, 1.0, 0.0 }  -- vanilla { 1.0, 0.0, 0.0, 1.0, 0.0 } | for each execution mode how careful should we be with supply (1.0 means full required supply available, zero is no limit).

NDefines.NMilitary.PLAN_MAX_PROGRESS_TO_JOIN = 0.35  -- vanilla 0.50 | If Lower progress than this, probably needs support
NDefines.NMilitary.PLAN_PORVINCE_AIRFIELD_LEVEL_FACTOR = 0.25  -- vanilla 0.25 | Bonus factor for airfield level

 -- =====================================================================================
 -- FORT AVOIDANCE & AGGRESSION BALANCE
 -- =====================================================================================
--NDefines.NAI.ATTACK_HEAVILY_DEFENDED_LIMIT = 0.8  -- vanilla 0.5 | AI will not launch attacks against heavily defended fronts unless they consider to have this level of advantage (1.0 = 100%)
NDefines.NAI.PLAN_VALUE_FORTIFICATION_LEVEL_MAX_PENALTY = -0.6  -- vanilla -0.5 | --Max plan value penalty from fortification. This is scaled by number of provinces along a frontline, over the number which exceed the fort value value above
NDefines.NAI.FORT_LEVEL_TO_CONSIDER_HIGHLY_FORTIFIED = 1  -- vanilla 1 | Provinces above this level of fortification will be considered highly fortified by plan evaluation | [FAI]
NDefines.NMilitary.MICRO_POCKET_SIZE = 6  -- vanilla 4 | Pockets with a size equal to or lower than this will be mocroed by the AI, for efficiency. | [FAI]

NDefines.NAI.PLAN_ACTIVATION_SUPERIORITY_AGGRO = 6.0  -- vanilla 1.0 | How aggressive a country is in activating a plan based on how superiour their force is.
NDefines.NAI.PLAN_VALUE_TO_EXECUTE = -0.15  -- vanilla -0.5 | AI will typically avoid carrying out a plan it below this value (0.0 is considered balanced).
NDefines.NAI.SCARY_LEVEL_AVERAGE_DEFENSE = -0.6  -- vanilla -0.7 | average front defense modifier to make it consider it as a PITA to go for

 -- =====================================================================================
 -- DESPERATE AI BEHAVIOR
 -- =====================================================================================
NDefines.NAI.DESPERATE_AI_MIN_UNIT_ASSIGN_TO_ESCAPE = 5  -- vanilla 0 | AI will assign at least this amount of units to break from desperate situations
NDefines.NAI.DESPERATE_AI_WEAK_UNIT_STR_LIMIT = 0.7  -- vanilla 0.35 | ai will increase number of units assigned to break from desperate situations when units are start falling lower than this str limit
NDefines.NAI.DESPERATE_AI_MIN_ORG_BEFORE_ATTACK = 0.35  -- vanilla 0.3 | ai will wait for this much org to attack an enemy prov in desperate situations
NDefines.NAI.DESPERATE_AI_MIN_ORG_BEFORE_MOVE = 0.15  -- vanilla 0.06 | ai will wait for this much org to move in desperate situations
NDefines.NAI.DESPERATE_ATTACK_WITHOUT_ORG_WHEN_NO_ORG_GAIN = 120  -- vanilla 120 | if ai can't regain enough org to attack in this many hours, it will go truly desperate and attack anyway (still has to wait for move org)

 -- =====================================================================================
 -- COMBAT EVALUATION & TARGETING
 -- =====================================================================================
NDefines.NMilitary.COMBAT_VALUE_ORG_IMPORTANCE = 1.1  -- vanilla 1 | Multiplier on TotalOrganisation when determining the combat value of a division | [FAI]
NDefines.NMilitary.COMBAT_VALUE_STR_IMPORTANCE = 1.0  -- vanilla 1 | Multiplier on TotalStrength when determining the combat value of a division
NDefines.NMilitary.SOFT_ATTACK_TARGETING_FACTOR = 1.15  -- vanilla 1.0 | How much we care about potential soft attacks when evaluating priority combat target | [FAI]
NDefines.NMilitary.HARD_ATTACK_TARGETING_FACTOR = 1.35  -- vanilla 1.2 | How much we care about potential hard attacks when evaluating priority combat target | [FAI]

NDefines.NAI.RESERVE_TO_COMMITTED_BALANCE = 0.2  -- vanilla 0.3 | How many reserves compared to number of committed divisions in a combat (1.0 = as many as reserves as committed) | [FAI]

 -- =====================================================================================
 -- ENCIRCLEMENT DISCOVERY
 -- =====================================================================================
NDefines.NAI.HOURS_BETWEEN_ENCIRCLEMENT_DISCOVERY = 36  -- vanilla 72 | Per army, interval in hours between refresh of which provinces it considers make up potential encirclement points | [FAI] [BUG FIX]

 -- =====================================================================================
 -- DIVISION ROLE MATCHING
 -- =====================================================================================
NDefines.NAI.DIVISION_MATCH_ROLE_BOOST_FACTOR = 1.5  -- vanilla 1.2 | When finding closest matching existing template to a target template, boost the score by this much if the template also has the correct role | [FAI]

 -- =====================================================================================
 -- UNIT ASSIGNMENT & FRONT REASSIGNMENT
 -- =====================================================================================
--NDefines.NAI.REVISITED_PROV_BOOST_FACTOR = 9  -- vanilla 4 | When the AI picks units for a front, it prioritises units already nearby. | [FAI]
--NDefines.NAI.REASSIGN_TO_ANOTHER_FRONT_IF_IN_COMBAT_FACTOR = 0.15  -- vanilla 0.2 | Factor for reassigning to another front if in combat. 0.0 < X < 1.0 means reluctant, X > 1.0 means want to. | [FAI]
--NDefines.NAI.REASSIGN_TO_ANOTHER_FRONT_FACTOR = 0.45  -- vanilla 0.5 | Factor for reassigning to another front. 0.0 < X < 1.0 means reluctant, X > 1.0 means want to. | [FAI]
NDefines.NAI.PLAN_VALUE_BONUS_FOR_MOVING_UNITS = 0.45  -- vanilla 0.35 | AI plans gets a bonus when units are not moving and ready to fight | [FAI]
--NDefines.NAI.AI_PREFERRED_TACTIC_WEEKLY_CHANGE_CHANCE = 0.10  -- vanilla 0.05 | Chance for AI to select a new preferred tactic if they don't have one selected | [FAI]
--NDefines.NAI.FRONT_REASSIGN_DISTANCE = 250.0                       -- vanilla 250.0

 -- =====================================================================================
 -- LEADER ASSIGNMENT — GENERAL SCORING
 -- =====================================================================================
NDefines.NAI.ARMY_LEADER_ASSIGN_EMPTYNESS_MALUS = 0.3  -- vanilla 0.2 | Factor for avoiding assigning leaders that can lead large armies to small armies (a value of 0.2 reduces the score by max 20 %) | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_ARMY_ARMOR_SPEED_FACTOR = 30.0  -- vanilla 20.0 | Importance of general's ARMY_ARMOR_SPEED_FACTOR modifier (proportional to armor ratio in the army) | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_ARMY_ARMOR_ATTACK_FACTOR = 30.0  -- vanilla 20.0 | Importance of general's ARMY_ARMOR_ATTACK_FACTOR modifier (proportional to armor ratio in the army) | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_BOOST_ARMOR_SKILL = 25.0  -- vanilla 20.0 | Importance of general's trait where armor skill is boosted, e.g. armor_officer which boosts panzer_leader (proportional to armor ratio in the army) | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_ARMOR_LEADER_IF_NO_ARMOR = -1.0  -- vanilla -0.5 | Avoid assigning a general with armor skills to an army with no armor (can be negative) | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_AMPHIBIOUS_INVASION = 6.0  -- vanilla 1.0 | If involved in invasion, importance of general's AMPHIBIOUS_INVASION modifier | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_NAVAL_INVASION_PREPARATION = 6.0  -- vanilla 1.0 | If involved in invasion, importance of general's NAVAL_INVASION_PREPARATION modifier | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_KEEP_CURRENT_LEADER_FACTOR = 2.0  -- vanilla 1.2 | Boosts the score for keeping the current leader. Value > 1.0 favors the current leader. | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_DONT_STEAL_OTHER_FACTOR = 0.25  -- vanilla 0.75 | Reduces the score for leaders assigned elsewhere. Value < 1.0 discourages reassigning these leaders. | [FAI]

 -- Leader skill weighting
NDefines.NAI.ARMY_LEADER_ASSIGN_OVERALL_SKILL_FACTOR = 60  -- vanilla 50 | This times general's overall skill is added to score | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_ATTACK_SKILL_FACTOR = 25  -- vanilla 20 | This times general's attack skill is added to score | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_DEFENSE_SKILL_FACTOR = 15  -- vanilla 10 | This times general's defense skill is added to score | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_LOGISTICS_SKILL_FACTOR = 15  -- vanilla 7 | This times general's logistics skill is added to score | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_PLANNING_SKILL_FACTOR = 12  -- vanilla 7 | This times general's planning skill is added to score | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_PLANNING_SPEED = 0.20  -- vanilla 0.1 | Importance of general's PLANNING_SPEED modifier | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_SUPPLY_CONSUMPTION_FACTOR = 2.0  -- vanilla 1.0 | Importance of general's SUPPLY_CONSUMPTION_FACTOR modifier | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_OUT_OF_SUPPLY_FACTOR = 2.0  -- vanilla 1.0 | Importance of general's OUT_OF_SUPPLY_FACTOR modifier | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_XP_GAIN_FACTOR = 3.0  -- vanilla 2.0 | Importance of general's XP_GAIN_FACTOR modifier | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_NR_TRAITS = 7  -- vanilla 5 | This times general's nr of active traits is added to score | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_TERRAIN_FACTOR = 0.4  -- vanilla 0.2 | Importance of general's terrain skills | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_WINTER_ATTRITION_FACTOR = 2.0  -- vanilla 1.0 | Importance of general's WINTER_ATTRITION_FACTOR modifier | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_OVERCAPACITY = -300  -- vanilla -200 | Score for assigning leader to a too large army | [FAI]

 -- Defensive-specific leader scoring
NDefines.NAI.ARMY_LEADER_ASSIGN_DEFENSE_OVERALL_SKILL_FACTOR = 15  -- vanilla 10 | If defensive army, this times general's overall skill is added to score | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_DEFENSE_DEFENSE_SKILL_FACTOR = 30  -- vanilla 20 | If defensive army, this times general's defense skill is added to score | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_DEFENSE_LOGISTICS_SKILL_FACTOR = 6  -- vanilla 3 | If defensive army, this times general's logistics skill is added to score | [FAI]
NDefines.NAI.ARMY_LEADER_ASSIGN_DEFENSE_PLANNING_SKILL_FACTOR = 5  -- vanilla 3 | If defensive army, this times general's planning skill is added to score | [FAI]

 -- =====================================================================================
 -- AI FORCE CONCENTRATION (AIFC)
 -- =====================================================================================
NDefines.NAI.AIFC_UPDATE_FREQUENCY_DAYS = 3  -- vanilla 5 | How often will AI run its AI force concentration logic. Lowering this number may decrease performance. | [FAI]
NDefines.NAI.AIFC_FRESHNESS_BASE_VALUE = 35.0  -- vanilla 45.0 | AIFC fronts have a "freshness value" which decreases if no progress is made. When it reaches zero, it will give up on the current target and try another. | [FAI]
NDefines.NAI.AIFC_REFRESH_NEED_PER_DAY = 1.0  -- vanilla 1.0 | Decrease freshness value with this every day.
NDefines.NAI.AIFC_REFRESH_NEED_SUPPLY_FACTOR_PER_DAY = 2.5  -- vanilla 0.8 | Decrease freshness value with this multiplied by average supply ratio every day. | [FAI]
NDefines.NAI.AIFC_FRESHNESS_ADD_ON_PROGRESS = 22.5  -- vanilla 25.0 | Increase freshness value with this when we advance a province along the target path. | [FAI]
NDefines.NAI.AIFC_UNIT_RATIO_BASE = 0.15  -- vanilla 0.15 | After fulfilling minimum front unit needs, this ratio of the "extra"/desired units can be allocated to AI force concentration duty
NDefines.NAI.AIFC_MAX_NR_FRONTS = 6  -- vanilla 4 | The X (this) fronts with highest AIFC score are considered for AI force concentration | [FAI]
NDefines.NAI.AIFC_CA_DIVISIONS_PER_PROVINCE = 2  -- vanilla 3 | AI will use this as a baseline of how many divisions to have per province | [FAI]
NDefines.NAI.AIFC_ACTIVATE_AVG_ORG_RATIO_THRESHOLD = 0.3  -- vanilla 0.2 | Only activate the offensive order if average organisation is above this. | [FAI]
NDefines.NAI.AIFC_ACTIVATE_IN_POSITION_RATIO_THRESHOLD = 0.3  -- vanilla 0.3 | Only activate the offensive order if divisions in position is more than this ratio.
NDefines.NAI.AIFC_OFFENSIVE_DEACTIVATION_DAYS_THRESHOLD = 5  -- vanilla 5 | Deactivate the offensive order only if the conditions have been unfulfilled for this many days.
NDefines.NAI.AIFC_UNIT_NUDGE_FREQUENCY_DAYS = 7.0  -- vanilla 15 | On average every X day (randomly), check if another division (within same front) is better for AIFC based on score factors below. | [FAI]

 -- AIFC unit offensiveness score factors
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_BREAKTHROUGH = 12.0  -- vanilla 11.0 | [FAI]
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_SOFT_ATTACK = 12.0  -- vanilla 6.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_HARD_ATTACK = 16.0  -- vanilla 8.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_ARMOR = 80.0  -- vanilla 30.0 | [FAI]
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_PIERCING = 8.0  -- vanilla 4.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_HARDNESS = 800.0  -- vanilla 300.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_SPEED = 15.0  -- vanilla 15.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_INITIATIVE = 5.0  -- vanilla 5.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_ORGANISATION = 1.0  -- vanilla 0.3 | [FAI]
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_HITPOINTS = 0.5  -- vanilla 0.3
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_DEFENSE = -0.2  -- vanilla -0.2
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_ENTRENCHMENT = -0.5  -- vanilla -0.5
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_EXPERIENCE = 500.0  -- vanilla 300.0

 -- AIFC strategic target scoring
NDefines.NAI.AIFC_TARGET_IGNORE_VP_THRESHOLD = 10  -- vanilla 10 | VP target needs at leas this many victory points to be considered a target
NDefines.NAI.AIFC_TARGET_SUPPLY_HUB_BASE_SCORE = 45  -- vanilla 20.0 | Base score for supply hubs | [FAI]
NDefines.NAI.AIFC_TARGET_NAVAL_BASE_BASE_SCORE = 15.0  -- vanilla 10.0 | Base score for naval bases
NDefines.NAI.AIFC_TARGET_NAVAL_BASE_SCORE_PER_LEVEL = 2.0  -- vanilla 1.0 | Score for naval bases increases by this for each level
NDefines.NAI.AIFC_TARGET_VP_SCORE_FACTOR = 1.0  -- vanilla 1.0 | Score for VPs increases by this for every victory point
NDefines.NAI.AIFC_TARGET_CAPITAL_SCORE_EXTRA = 10.0  -- vanilla 5.0 | Extra score for Capitals (in addition to VP score) | [FAI]
NDefines.NAI.AIFC_TARGET_SHORT_PATH_PENALTY_FACTOR = 0.0  -- vanilla 0.1 | Penalty factor for short AIFC paths (path <= 3 (including own start province))
NDefines.NAI.AIFC_TARGET_PERSISTED_FACTOR = 35.0  -- vanilla 30.0 | Bonus factor for persisted targets (used to incentivize AI to select target again after e.g. front lines have reformed or save file is loaded) | [FAI]

 -- AIFC path cost multipliers
NDefines.NAI.AIFC_PATH_MAX_COST = 6.0  -- vanilla 7.0 | Only allow paths with total cost <= this. WARNING: increasing this value may cause stuttering and other performance issues (since AIFC will evaluate larger areas) | [FAI]
NDefines.NAI.AIFC_PATH_COST_ADJ_NORMAL = 1.0  -- vanilla 1.0
NDefines.NAI.AIFC_PATH_COST_ADJ_STRAIT = 4.0  -- vanilla 4.0
NDefines.NAI.AIFC_PATH_COST_ADJ_RIVER = 1.5  -- vanilla 2.0
NDefines.NAI.AIFC_PATH_COST_ADJ_RIVER_LARGE = 2.3  -- vanilla 3.0
NDefines.NAI.AIFC_PATH_COST_TRN_MOUNTAINS = 2.5  -- vanilla 3.0 | [FAI]
NDefines.NAI.AIFC_PATH_COST_TRN_FOREST = 1.15  -- vanilla 1.2
NDefines.NAI.AIFC_PATH_COST_TRN_DESERT = 1.5  -- vanilla 1.2
NDefines.NAI.AIFC_PATH_COST_TRN_HILLS = 1.2  -- vanilla 1.2
NDefines.NAI.AIFC_PATH_COST_TRN_JUNGLE = 3.5  -- vanilla 3.0 | [FAI]
NDefines.NAI.AIFC_PATH_COST_TRN_PLAINS = 1.0  -- vanilla 0.8 | [FAI]
NDefines.NAI.AIFC_PATH_COST_TRN_URBAN = 0.8  -- vanilla 1.0
NDefines.NAI.AIFC_PATH_COST_TRN_MARSH = 2.5  -- vanilla 3.0
NDefines.NAI.AIFC_PATH_COST_PER_FORT_LEVEL = 0.55  -- vanilla 0.3 | This multiplier is calculated as: 1.0 + <define>*fort_level (only for fort levels > 0)
NDefines.NAI.AIFC_PATH_COST_HAS_SUPPLY_HUB = 0.50  -- vanilla 0.5 | If the province we're entering has a supply hub
NDefines.NAI.AIFC_PATH_COST_HAS_NAVAL_BASE = 0.25  -- vanilla 0.5 | If the province we're entering has a naval base | [FAI]
NDefines.NAI.AIFC_PATH_COST_RAILWAY_CONNECTION = 0.70  -- vanilla 0.75 | If the provinces are connected by a railway with level > 0 | [FAI]

 -- =====================================================================================
 -- THEATRE GENERATION, MERGING & UNIT DISTRIBUTION
 -- =====================================================================================
NDefines.NAITheatre.AI_THEATRE_AI_FRONT_MIN_DESIRED_RATIO = 0.65  -- vanilla 0.18 | Fronts are sorted based on priority, we nudge unit demand based on this sorting, the higher the value the more units the most important front gets | [FAI]
NDefines.NAITheatre.AI_THEATRE_DISTRIBUTION_MAX_SCORE = 2.4  -- vanilla 250000 | Max Score that a unit can have when being distributed to ai fronts, higher value means more granularity in score changes, lower values means less variation in where units can go | [FAI]
NDefines.NAITheatre.AI_THEATRE_DISTRIBUTION_PERCENTAGE_OF_MINIMUM_UNITS_TO_KEEP = 0.35  -- vanilla 1.0 | How much should a frontline adheer to its minimum unit demand, when removing/reassigning units | [FAI]
NDefines.NAITheatre.AI_THEATRE_DISTRIBUTION_SAME_THEATRE_SCORE_MODIFIER = 0.35  -- vanilla 0.25 | Value that affects the score of units when distributing to fronts within the same theatre, its a percentage multiplier, the higher it is the higher the chance of units staying in close proximity | [FAI]

NDefines.NAITheatre.AI_THEATRE_GENERATION_MINIMUM_STATE_COUNT = 4  -- vanilla 3 | Small Theatres - Minimum state count for a theatre | [FAI]
NDefines.NAITheatre.AI_THEATRE_GENERATION_MAX_DISTANCE_TO_MERGE = 250  -- vanilla 200 | Small Theatres - Dont merge with too far away theatres, higher value means less merging will occur | [FAI]
NDefines.NAITheatre.AI_THEATRE_BREAKDOWN_MAX_DISTANCE_TO_MERGE = 350  -- vanilla 200 | Dont merge with too far away theatres, higher value means less merging will occur | [FAI]
NDefines.NAITheatre.AI_THEATRE_GENERATION_BORDER_SIZE_RESTRICTION = 9  -- vanilla 7 | Theatres are generated based off borders, Higher value means larger theatres | [FAI]

NDefines.NAITheatre.AI_THEATRE_DISTRIBUTION_MAX_PERCENT_UNMET_DEMAND_PER_FRONT = 0.2  -- vanilla 0.5 | Percentage of how much fronts should request from other lower priority fronts, 0 means once a front gets hold of a unit it stays there forever until its demand is reduced, controlls shuffling of units.
NDefines.NAITheatre.AI_THEATRE_SUPPLY_CRISIS_LIMIT = 0.25  -- vanilla 0.1 | If a unit is standing in an area with this supply ratio it will try to escape

 -- =====================================================================================
 -- AREA DEFENSE
 -- =====================================================================================
NDefines.NAI.AREA_DEFENSE_BASE_IMPORTANCE = 30  -- vanilla 30 | Area defense order base importance value (used for determining order of troop selections)
NDefines.NAI.AREA_DEFENSE_CIVIL_WAR_IMPORTANCE = 30  -- vanilla 30 | Area defense order importance value when a country is in a civil war as target or revolter.
NDefines.NAI.AREA_DEFENSE_IMPORTANCE_FACTOR = 1.0  -- vanilla 1.0 | used to balance defensive area importance vs other fronts | [BIC]
NDefines.NAI.STATE_CONTROL_FOR_AREA_DEFENSE = 1.0  -- vanilla 0.4 | To avoid AI sending area defense to area with very little foothold | [BIC]

 -- Default area defense settings
NDefines.NAI.AREA_DEFENSE_SETTING_VP = true  -- vanilla false
NDefines.NAI.AREA_DEFENSE_SETTING_PORTS = true  -- vanilla true
NDefines.NAI.AREA_DEFENSE_SETTING_AIRBASES = true  -- vanilla false
NDefines.NAI.AREA_DEFENSE_SETTING_BORDERS = false  -- vanilla false
NDefines.NAI.AREA_DEFENSE_SETTING_FORTS = false  -- vanilla false
NDefines.NAI.AREA_DEFENSE_SETTING_COASTLINES = true  -- vanilla true
NDefines.NAI.AREA_DEFENSE_SETTING_RAILWAYS = false  -- vanilla false
NDefines.NAI.AREA_DEFENSE_SETTING_FACILITY = false  -- vanilla false

NDefines.NAI.AREA_DEFENSE_MINCAP_MAX_CAPITAL_DEFENSE = 100  -- vanilla 100 | MaxUnits for capital defense is at least this. (basically use capital defense as a buffer if we have "too many units")
NDefines.NAI.AREA_DEFENSE_MINCAP_DESIRED_CAPITAL_DEFENSE = 8  -- vanilla 5 | DesiredUnits for capital defense is at least this.
NDefines.NAI.AREA_DEFENSE_MINCAP_MAX_HOME_AREA = 10  -- vanilla 10 | MaxUnits for home area is at least this.
NDefines.NAI.AREA_DEFENSE_MINCAP_DESIRED_HOME_AREA = 3  -- vanilla 3 | DesiredUnits for home area is at least this.

 -- Min/desired/max weights for area defense (array values: { min, desired, max })
NDefines.NAI.AREA_DEFENSE_CAPITAL_PEACE_VP_WEIGHT = { 1.0, 1.0, 1.0 }  -- vanilla { 1.0, 1.0, 1.0 }
NDefines.NAI.AREA_DEFENSE_CAPITAL_VP_WEIGHT = { 0.75, 1.25, 2.25 }  -- vanilla { 0.0, 1.0, 2.0 } | [FAI]
NDefines.NAI.AREA_DEFENSE_HOME_VP_WEIGHT = { 0.02, 0.75, 1.20 }  -- vanilla { 0.0, 0.5, 1.0 } | [FAI]
NDefines.NAI.AREA_DEFENSE_OTHER_VP_WEIGHT = { 0.0, 0.0, 1.0 }  -- vanilla { 0.0, 0.0, 1.0 }

NDefines.NAI.AREA_DEFENSE_CAPITAL_PEACE_COAST_WEIGHT = { 0.0, 0.1, 0.2 }  -- vanilla { 0.0, 0.0, 0.0 }
NDefines.NAI.AREA_DEFENSE_CAPITAL_COAST_WEIGHT = { 0.0, 0.20, 0.45 }  -- vanilla { 0.0, 0.2, 0.7 } | [FAI]
NDefines.NAI.AREA_DEFENSE_HOME_COAST_WEIGHT = { 0.0, 0.08, 0.18 }  -- vanilla { 0.0, 0.1, 0.5 } | [FAI]
NDefines.NAI.AREA_DEFENSE_OTHER_COAST_WEIGHT = { 0.0, 0.03, 0.08 }  -- vanilla { 0.0, 0.0, 0.0 } | [FAI]

NDefines.NAI.AREA_DEFENSE_CAPITAL_PEACE_BASE_WEIGHT = { 0.2, 1.0, 1.0 }  -- vanilla { 0.0, 0.0, 0.0 }
NDefines.NAI.AREA_DEFENSE_CAPITAL_BASE_WEIGHT = { 0.25, 1.30, 1.80 }  -- vanilla { 0.5, 1.0, 1.5 } | [FAI]
NDefines.NAI.AREA_DEFENSE_HOME_BASE_WEIGHT = { 0.10, 1.20, 1.40 }  -- vanilla { 0.5, 1.0, 1.0 } | [FAI]
NDefines.NAI.AREA_DEFENSE_OTHER_BASE_WEIGHT = { 0.0, 0.10, 0.30 }  -- vanilla { 0.5, 0.5, 1.0 } | [FAI]

 -- Unit cap factors per order type
NDefines.NAI.MAX_UNITS_FACTOR_AREA_ORDER = 0.95  -- vanilla 0.75 | Factor for max number of units to assign to area defense orders | [FAI]
NDefines.NAI.DESIRED_UNITS_FACTOR_AREA_ORDER = 0.75  -- vanilla 0.7 | Factor for desired number of units to assign to area defense orders | [FAI]
NDefines.NAI.MIN_UNITS_FACTOR_AREA_ORDER = 0.55  -- vanilla 1.0 | Factor for min number of units to assign to area defense orders | [FAI]

NDefines.NAI.MAX_UNITS_FACTOR_FRONT_ORDER = 1.0  -- vanilla 1.0 | Factor for max number of units to assign to area front orders
NDefines.NAI.DESIRED_UNITS_FACTOR_FRONT_ORDER = 1.1  -- vanilla 1.1 | Factor for desired number of units to assign to area front orders
NDefines.NAI.MIN_UNITS_FACTOR_FRONT_ORDER = 1.0  -- vanilla 1.0 | Factor for min number of units to assign to area front orders

NDefines.NAI.MAX_UNITS_FACTOR_INVASION_ORDER = 1.0  -- vanilla 1.0 | Factor for max number of units to assign to naval invasion orders
NDefines.NAI.DESIRED_UNITS_FACTOR_INVASION_ORDER = 0.85  -- vanilla 1.0 | Factor for desired number of units to assign to naval invasion orders | [FAI]
NDefines.NAI.MIN_UNITS_FACTOR_INVASION_ORDER = 0.65  -- vanilla 1.0 | Factor for min number of units to assign to naval invasion orders | [FAI]

 -- =====================================================================================
 -- MACRO-STRATEGY — GUARANTEES, ALLIES & WAR ENTRY
 -- =====================================================================================
NDefines.NAI.AI_GUARANTEE_DESIRE_WITH_PRESSURE_MODIFIER = -0.35  -- vanilla 15 | If we have an 'ideology drfit from guarantees' modifier, how much more likely will we be to guarantee nations? | [FAI]
NDefines.NAI.TENSION_MIN_FOR_GUARANTEE_VS_MINOR = 0.45  -- vanilla 10 | for non faction people AI will not consider you worth guaranteeing below this | [FAI]

NDefines.NAI.CALL_ALLY_BASE_DESIRE = 40  -- vanilla 20 | exactly what it says | [FAI]
NDefines.NAI.CALL_ALLY_WAR_LENGTH_NR_MONTHS = 6  -- vanilla 2 | For every month the war has gone on, increase desire this much | [FAI]
NDefines.NAI.CALL_ALLY_RELATIVE_INDUSTRY_STRENGTH_THRESHOLD = 0.7  -- vanilla 1.5 | If our relative industry strength ratio is less than this (compared to all enemies), increase desire to call allies | [FAI]
NDefines.NAI.CALL_ALLY_LOSING_WAR_THRESHOLD = 0.15  -- vanilla 0.45 | If our war progress is less than this, increase desire to call allies (0.5 is stalemate) | [FAI]

NDefines.NAI.DIPLOMACY_CALL_ALLY_VALIDITY_DURATION = 75  -- vanilla 1 | Overwrite above value for CallAlly and JoinAlly diplo action. This is however fixed, and is not subject to randomness. Also, this is the time the AI will keep the action in its incoming queue without declining it. | [FAI]
NDefines.NAI.JOIN_FACTION_BOTH_LOSING = -15  -- vanilla -300 | Desire to be in a faction when both we and htey are in losing wars | [FAI]

NDefines.NAI.MIN_DELIVERED_TRADE_FRACTION = 0.85  -- vanilla 0.8 | AI will cancel trade deals that are not able to deliver more than this fraction of the agreed amount
NDefines.NAI.MAX_VOLUNTEER_ARMY_FRACTION = 0.10  -- vanilla 0.25 | Countries will not send more than their forces time this number to aid another country
NDefines.NAI.DIPLOMACY_ACCEPT_VOLUNTEERS_BASE = 150  -- vanilla 50 | Base value of volunteer acceptance (help is welcome)
NDefines.NAI.TRADEABLE_FACTORIES_FRACTION = 1.0  -- vanilla 0.8 | Will at most trade away this fraction of factories.

NDefines.NAI.RESOURCE_WANT_PER_MISSING_BALANCE = 1.0  -- vanilla 0.2 | negative balance increases the desire on a resource
NDefines.NAI.RESOURCE_WANT_PER_CONSUMED = 0.15  -- vanilla 0.05 | if resource is being used in production, increase the desire

 -- =====================================================================================
 -- NAVY AI
 -- =====================================================================================
NDefines.NNavy.MAX_CAPITALS_PER_AUTO_TASK_FORCE = 24  -- vanilla 5 | maximum number of capital ships the auto-task force creation will put together when designing SurfaceActionGroup | [FAI]
NDefines.NNavy.MAX_SUBMARINES_PER_AUTO_TASK_FORCE = 96  -- vanilla 30 | maximum number of submarines the auto-task force creation will put together when designing wolfpack | [FAI]
NDefines.NNavy.BEST_CAPITALS_TO_SCREENS_RATIO = 0.5  -- vanilla 0.25 | capitals / screens ratio used for creating FEX groups in naval combat | [FAI]

NDefines.NAI.MIN_SUPPORT_SHIP_RATIO = 0.5  -- vanilla 0.7 | if support ship ratio is below this, steal other ships. | [FAI]
NDefines.NAI.MIN_MAIN_SHIP_RATIO_TO_REINFORCE = 0.5  -- vanilla 0.5 | the main ships will be tried to reinforce this level.
NDefines.NAI.MIN_SUPPORT_SHIP_RATIO_TO_REINFORCE = 0.5  -- vanilla 0.9 | the support ships will be tried to reinforce this level. | [FAI]
NDefines.NAI.MIN_MAIN_SHIP_TO_SPARE = 0.5  -- vanilla 0.7 | can only steal ships from a task force if their main ship ratio is above this. | [FAI]
NDefines.NAI.MIN_SUPPORT_SHIP_TO_SPARE = 0.5  -- vanilla 1.0 | can only steal ships from a task force if their support ship ratio is above this. | [FAI]
NDefines.NAI.MIN_MAIN_SHIP_RATIO_TO_MERGE = 0.5  -- vanilla 0.7 | try merge task force if main ship ratio is lower than this. | [FAI]
NDefines.NAI.MAX_MAIN_SHIP_RATIO_TO_MERGE = 1.0  -- vanilla 1.001 | if resulting main ship ratio would be at most this, allow merging into this task force. | [FAI]

NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING_PRIO_MAX_MINES = 250  -- vanilla 1000 | if there are this many mines near our owned states, mine sweeping reaches max prio
NDefines.NAI.MISSING_CONVOYS_BOOST_FACTOR = 75.0  -- vanilla 50.0 | The more convoys a country is missing, the more resources it diverts to cover this.

NDefines.NAI.NAVAL_MISSION_MINES_PLANTING_NEAR_OWNED = 80000  -- vanilla 40000
NDefines.NAI.NAVAL_MISSION_MINES_SWEEPING_NEAR_OWNED = 100000  -- vanilla 60000 | How likely the AI will do the sweeping missions. The value is scaled by the amount of mines to sweep.

NDefines.NAI.REGION_THREAT_LEVEL_TO_AVOID_REGION = 25 * 5  -- vanilla 25 * 10, -- How much threat must be generated in region ( by REGION_THREAT_PER_SUNK_CONVOY ) so the AI will decide to mark the region as avoid | [FAI]
NDefines.NAI.REGION_THREAT_LEVEL_TO_BLOCK_REGION = 25 * 200  -- vanilla 25 * 100, -- How much threat must be generated in region ( by REGION_THREAT_PER_SUNK_CONVOY ) so the AI will decide to mark the region as avoid | [FAI]
NDefines.NAI.CONVOY_ESCORT_MUL_FROM_NO_CONVOYS = 0  -- vanilla 0.02 | score multiplier when no convoys are around
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MAX_CONVOY_THREAT = 500  -- vanilla 1500 | AI will increase screen assignment for escort missions as threate increases | [FAI]

NDefines.NAI.MAX_SCREEN_FORCES_FOR_INVASION_SUPPORT = 0.2  -- vanilla 0 | max ratio of screens forces to be used in naval invasion missions | [FAI]
NDefines.NAI.MAX_CAPITAL_FORCES_FOR_INVASION_SUPPORT = 0.2  -- vanilla 0 | max ratio of capital forces to be used in naval invasion missions | [FAI]
NDefines.NAI.MAX_PATROL_TO_STRIKE_FORCE_RATIO = 8.0  -- vanilla 4.0 | maximum patrol/strike force ratio | [FAI]

NDefines.NAI.PATROL_FLEETS_PER_INVASION_REGION_ON_PATH = 4  -- vanilla 2 | How many STL patrol fleet templates should the AI try to use when generating dominance | [FAI]
NDefines.NAI.DANGEROUS_DISTANCE_TO_CAPITAL = 500.0  -- vanilla 1000.0 | Distance in pixels from the target province to capital location where the AI will add the naval invasion defense importance | [FAI]

NDefines.NAI.ESTIMATED_CONVOYS_PER_DIVISION = 18  -- vanilla 6 | Not always correct, but mainly used to make sure AI does not go crazy | [FAI]
NDefines.NAI.NAVAL_MISSION_INVASION_BASE = 30000  -- vanilla 1000 | Base score for region with naval invasion (modified dynamically by prioritizing orders) | [FAI]

NDefines.NAI.MIN_FUEL_RATIO_TO_NOT_IGNORE_STRIKE_FORCE_COST = 0.2  -- vanilla 0.0 | ai will still assign strike forces unless fuel ratio drops below this one
NDefines.NAI.MIN_FUEL_RATIO_TO_NOT_IGNORE_INVASION_SUPPORT_COST = 0  -- vanilla 0.0 | ai will still naval invasion support forces unless fuel ratio drops below this one

 -- =====================================================================================
 -- AIR AI — GENERAL
 -- =====================================================================================
NDefines.NAir.AI_ALLOWED_PLANES_KEPT_IN_RESERVE = 0.0  -- vanilla 0.10 | --AI allowed planes is reduced by this percentage. Overflow will be distributed to the next valid order. Worst case, this will result in this % of planes no being assigned any order.
NDefines.NAI.DAYS_BETWEEN_AIR_PRIORITIES_UPDATE = 3  -- vanilla 4 | Amount of days between air ai updates priorities for air wings ( from 1 to N ) | [FAI]
NDefines.NAI.MAX_AIR_REGIONS_TO_CARE_ABOUT = 10  -- vanilla 6 | Number of regions we'll consider when trying to split planes a bit. Split is NOT equal, just a guide, leftovers still applied elsewhere if needed | [FAI]

NDefines.NAI.AIR_SCORE_DISTANCE_IMPACT = 0.5  -- vanilla 0.3 | Effect of distance applied to the score calculations | [BIC]
NDefines.NAI.LAND_COMBAT_GUIDE_DISTANCE = 270.0  -- vanilla 290.0 | Distance within whch we'll care a bit more about sending planes regardless of whether our boiz are dying | [BIC]
NDefines.NAI.AI_AIR_MISSION_COVERAGE_TO_STAY_PUT = 0.66  -- vanilla 0.5 | AI will not rebase air wings on missions if their new mission target exceeds this percentage of region coverage | [BIC]
NDefines.NAI.AI_FRACTION_OF_FIGHTERS_RESERVED_FOR_INTERCEPTION = 0.25  -- vanilla 0.25 | --Percentage of fighters we reserve for interception vs AS | [BIC]
NDefines.NAI.MIN_ALLIED_DEFENSE_FACTOR_AIRWING_REQUESTS = 0.75  -- vanilla 0.07 | Airwing requests will be factored by a minimum of this when comparing own vs friendly troops in area | [BIC]
NDefines.NAI.AIR_SUPERIORITY_FOR_FRIENDLY_CAS_RATIO = 0.75  -- vanilla 0.75 | Demand at least this proportion of our cas planes as air superiority regardless of other needs | [BIC]

 -- =====================================================================================
 -- AIR AI — LAND DEFENSE
 -- =====================================================================================
NDefines.NAI.LAND_DEFENSE_INTERSEPTORS_PER_BOMBERS = 1.0           -- vanilla 1.0
NDefines.NAI.LAND_DEFENSE_INTERSEPTORS_PER_PLANE = 0               -- vanilla 0
NDefines.NAI.LAND_DEFENSE_MIN_FACTORIES_FOR_AIR_IMPORTANCE = 0  -- vanilla 5 | If amount of factories is less importance of factories won't apply | [BIC]
NDefines.NAI.LAND_DEFENSE_RAID_IMPORTANCE = 500  -- vanilla 500 | Strategic importance of detected raids targetting us | [BIC]
NDefines.NAI.LAND_DEFENSE_FIGHERS_PER_RAID = 100  -- vanilla 100 | Amount of air superiority planes requested per detected raid targetting us | [BIC]
NDefines.NAI.LAND_DEFENSE_INTERCEPTORS_PER_RAID = 100  -- vanilla 100 | Amount of interceptor planes requested per detected raid targetting us | [BIC]
NDefines.NAI.LAND_DEFENSE_SAM_MISSILE_IMPORTANCE_FACTOR = 0.2  -- vanilla 0.2 | Importance factor of using sam missiles for regions strategic importance. Higher value will increase the usage | [BIC]
NDefines.NAI.LAND_COMBAT_MISSILE_IMPORTANCE_FACTOR = 1.5  -- vanilla 1.5 | Importance factor of using missiles for regions strategic importance. Higher value will increase the usage | [BIC]

 -- Requested air wings for land defense
NDefines.NAI.LAND_DEFENSE_FIGHERS_PER_PLANE = 1.0  -- vanilla 1.8 | Amount of air superiority planes requested per enemy plane
NDefines.NAI.LAND_DEFENSE_INTERCEPTORS_PER_BOMBERS = 1.5  -- vanilla 0.8 | Amount of interceptor planes requested per enemy bomber | [BIC]
NDefines.NAI.LAND_DEFENSE_INTERCEPTORS_PER_PLANE = 0.5  -- vanilla 0.1 | Amount of interceptor planes requested per enemy plane (non bomber) | [BIC]

 -- Land defense regional importance scores
NDefines.NAI.LAND_DEFENSE_AIR_SUPERIORITY_IMPORTANCE = 5  -- vanilla 1.5 | Strategic importance of air superiority ( amount of enemy planes in area ) | [BIC]
NDefines.NAI.LAND_DEFENSE_CIVIL_FACTORY_IMPORTANCE = 3  -- vanilla 50 | Strategic importance of civil factories | [BIC]
NDefines.NAI.LAND_DEFENSE_MILITARY_FACTORY_IMPORTANCE = 3  -- vanilla 70 | Strategic importance of military factories | [BIC]
NDefines.NAI.LAND_DEFENSE_NAVAL_FACTORY_IMPORTANCE = 2  -- vanilla 30 | Strategic importance of naval factories | [BIC]
NDefines.NAI.LAND_DEFENSE_SUPPLY_HUB_IMPORTANCE = 1  -- vanilla 4 | Strategic importance of supply hubs | [BIC]
NDefines.NAI.LAND_DEFENSE_AA_IMPORTANCE_FACTOR = 0.1  -- vanilla 1.0 | Factor of AA influence on strategic importance ( 0.0 - 1.0 ) | [BIC]
NDefines.NAI.LAND_DEFENSE_INFRA_IMPORTANCE_FACTOR = 0.1  -- vanilla 0.5 | Factor of infrastructure influence on strategic importance ( 0.0 - 1.0 ) | [BIC]
NDefines.NAI.LAND_DEFENSE_IMPORTANCE_SCALE = 2.5  -- vanilla 3.0 | Lend defence total importance scale (every land defence score get's multiplied by it) | [BIC]

 -- =====================================================================================
 -- AIR AI — GROUND SUPPORT (CAS)
 -- =====================================================================================
NDefines.NAI.LAND_COMBAT_CAS_PER_ENEMY_ARMY = 40  -- vanilla 30 | Amount of CAS planes requested per enemy division | [BIC]
NDefines.NAI.LAND_COMBAT_FIGHTERS_PER_PLANE = 1.25  -- vanilla 1.0 | Amount of air superiority planes requested per enemy plane | [BIC]
NDefines.NAI.LAND_COMBAT_INTERCEPT_PER_PLANE = 0  -- vanilla 0.25 | Amount of interception planes requested per enemy plane | [BIC]
NDefines.NAI.LAND_COMBAT_ANTI_LOGISTICS_PER_ENEMY_ARMY = 1  -- vanilla 0.1 | Amount of CAS planes requested per enemy army for anti-logistics | [BIC]
NDefines.NAI.LAND_COMBAT_CAS_PER_COMBAT = 20  -- vanilla 60 | Amount of CAS requested per combat | [BIC]
NDefines.NAI.LAND_COMBAT_BOMBERS_PER_LAND_FORT_LEVEL = 70  -- vanilla 6 | Amount of bomber planes requested per enemy land fort level | [BIC]
NDefines.NAI.LAND_COMBAT_BOMBERS_PER_COASTAL_FORT_LEVEL = 50  -- vanilla 6 | Amount of bomber planes requested per enemy coastal fort level | [BIC]
NDefines.NAI.LAND_COMBAT_MIN_EXCORT_PLANES = 100  -- vanilla 80 | Min amount of planes requested to excort operations | [BIC]
NDefines.NAI.LAND_COMBAT_CAS_PLANES_PER_ENEMY_ARMY_LIMIT = 300  -- vanilla 200 | Limit of CAS planes requested by enemy armies | [FAI]

 -- Ground support regional importance scores
NDefines.NAI.LAND_COMBAT_AIR_SUPERIORITY_IMPORTANCE = 0.4  -- vanilla 0.40 | Strategic importance of air superiority ( amount of enemy planes in area ) | [BIC]
NDefines.NAI.LAND_COMBAT_OUR_ARMIES_AIR_IMPORTANCE = 20  -- vanilla 20 | Strategic importance of our armies | [BIC]
NDefines.NAI.LAND_COMBAT_OUR_COMBATS_AIR_IMPORTANCE = 160  -- vanilla 155 | Strategic importance of our armies in the combats | [BIC]
NDefines.NAI.LAND_COMBAT_FRIEND_ARMIES_AIR_IMPORTANCE = 10  -- vanilla 10 | Strategic importance of friendly armies | [BIC]
NDefines.NAI.LAND_COMBAT_FRIEND_COMBATS_AIR_IMPORTANCE = 15  -- vanilla 8 | Strategic importance of friendly armies in the combat | [BIC]
NDefines.NAI.LAND_COMBAT_ENEMY_ARMIES_AIR_IMPORTANCE = 20  -- vanilla 12 | Strategic importance of our armies | [BIC]
NDefines.NAI.LAND_COMBAT_ENEMY_LAND_FORTS_AIR_IMPORTANCE = 2  -- vanilla 5 | Strategic importance of enemy land forts in the region | [BIC]
NDefines.NAI.LAND_COMBAT_ENEMY_COASTAL_FORTS_AIR_IMPORTANCE = 1  -- vanilla 3 | Strategic importance of enemy coastal fronts in the region | [BIC]
NDefines.NAI.LAND_COMBAT_IMPORTANCE_SCALE = 5.5  -- vanilla 5.0 | Lend combat total importance scale (every land combat score get's multiplied by it) | [BIC]

NDefines.NAI.NUM_HOURS_SINCE_LAST_COMBAT_TO_SUPPORT_UNITS_VIA_AIR = 48  -- vanilla 72 | units will be considered in combat if they are just out of their last combat for air supporting | [BIC]
NDefines.NAI.AIR_AI_ENEMY_PROV_RATIO_FOR_COMBAT_REGION = 0.01  -- vanilla 0.15 | if a region has more than this ratio of provinces controlled by enemy, AI will consider it as a combat zone while assigning planes | [BIC]

 -- =====================================================================================
 -- AIR AI — INTERCEPTION (PASSING THROUGH)
 -- =====================================================================================
NDefines.NAI.ENEMY_PASSING_THROUGH_PLANES_PER_BOMBER = 1.5  -- vanilla 0.1 | Amount of planes we assign to intercept enemies en-route to a location | [BIC]
NDefines.NAI.ENEMY_PASSING_THROUGH_PLANES_PER_FIGHTER = 2  -- vanilla 0.1 | Amount of planes we assign to intercept enemies en-route to a location | [BIC]
NDefines.NAI.ENEMY_PASSING_THROUGH_PLANES_PER_SUPPORT = 2  -- vanilla 0.1 | Amount of planes we assign to intercept enemies en-route to a location | [BIC]
NDefines.NAI.ENEMY_PASSING_THROUGH_PLANES_PER_BOMBER_NAVAL_REGION = 1.5  -- vanilla 0.15 | Amount of planes we assign to intercept enemies en-route to a location over a sea region | [BIC]
NDefines.NAI.ENEMY_PASSING_THROUGH_PLANES_PER_FIGHTER_NAVAL_REGION = 1.25  -- vanilla 0.15 | Amount of planes we assign to intercept enemies en-route to a location over a sea region | [BIC]
NDefines.NAI.ENEMY_PASSING_THROUGH_PLANES_PER_SUPPORT_NAVAL_REGION = 1.0  -- vanilla 0.15 | Amount of planes we assign to intercept enemies en-route to a location over a sea region | [BIC]
NDefines.NAI.NAVAL_DEFENSE_INTERCEPTION_IMPORTANCE_FACTOR = 5  -- vanilla 30 | Factor on added planes passing through region to strategic importance | [BIC]

 -- =====================================================================================
 -- AIR AI — STRATEGIC BOMBING
 -- =====================================================================================
NDefines.NAI.STR_BOMB_MIN_ENEMY_FIGHTERS_IN_AREA = 4000  -- vanilla 2000 | If amount of enemy fighters is higher than this mission won't perform | [BIC]
NDefines.NAI.STR_BOMB_FIGHTERS_PER_PLANE = 1.75  -- vanilla 1.1 | Amount of air superiority planes requested per enemy plane | [BIC]
NDefines.NAI.STR_BOMB_PLANES_PER_CIV_FACTORY = 5  -- vanilla 20 | Amount of planes requested per enemy civ factory | [BIC]
NDefines.NAI.STR_BOMB_PLANES_PER_MIL_FACTORY = 5  -- vanilla 25 | Amount of planes requested per enemy military factory | [BIC]
NDefines.NAI.STR_BOMB_PLANES_PER_NAV_FACTORY = 5  -- vanilla 15 | Amount of planes requested per enemy naval factory | [BIC]
NDefines.NAI.STR_BOMB_PLANES_PER_SUPPLY_HUB = 0  -- vanilla 3 | Amount of planes requested per enemy supply node | [BIC]
NDefines.NAI.STR_BOMB_MIN_EXCORT_PLANES = 350  -- vanilla 200 | Min amount of planes requested to excort operations | [BIC]

NDefines.NAI.STR_BOMB_AIR_SUPERIORITY_IMPORTANCE = -0.1  -- vanilla 0.10 | Strategic importance of air superiority ( amount of enemy planes in area ) | [BIC]
NDefines.NAI.STR_BOMB_CIVIL_FACTORY_IMPORTANCE = 5  -- vanilla 50 | Strategic importance of enemy civil factories | [BIC]
NDefines.NAI.STR_BOMB_MILITARY_FACTORY_IMPORTANCE = 4  -- vanilla 70 | Strategic importance of enemy military factories | [BIC]
NDefines.NAI.STR_BOMB_NAVAL_FACTORY_IMPORTANCE = 2  -- vanilla 30 | Strategic importance of enemy naval factories | [BIC]
NDefines.NAI.STR_BOMB_SUPPLY_HUB_IMPORTANCE = 1  -- vanilla 1 | Strategic importance of enemy supply hubs | [BIC]
NDefines.NAI.STR_BOMB_AA_IMPORTANCE_FACTOR = 0.5  -- vanilla 0.5 | Factor of AA influence on strategic importance ( 0.0 - 1.0 ) | [BIC]
NDefines.NAI.STR_BOMB_INFRA_IMPORTANCE_FACTOR = 0.1  -- vanilla 0.25 | Factor of infrastructure influence on strategic importance ( 0.0 - 1.0 ) | [BIC]
NDefines.NAI.STR_BOMB_IMPORTANCE_SCALE = 4.0  -- vanilla 1.0 | str bombing total importance scale (every str bombing score get's multiplied by it) | [BIC]

 -- =====================================================================================
 -- AIR AI — NAVAL STRIKE & PATROL
 -- =====================================================================================
NDefines.NAI.NAVAL_FIGHTERS_PER_PLANE = 1.25  -- vanilla 1.1 | Amounts of air superiority planes requested per enemy plane | [BIC]
NDefines.NAI.NAVAL_STRIKE_PLANES_PER_ARMY = 25  -- vanilla 0 | Amount of planes requested per enemy army | [BIC]
NDefines.NAI.NAVAL_STRIKE_PLANES_PER_SHIP = 10  -- vanilla 20 | Amount of bombers requested per enemy ship | [BIC]
NDefines.NAI.PORT_STRIKE_PLANES_PER_SHIP = 8  -- vanilla 10 | Amount of bombers request per enemy ship in the port | [BIC]
NDefines.NAI.NAVAL_MIN_EXCORT_PLANES = 25  -- vanilla 0 | Min amount of planes requested to excort operations | [BIC]

NDefines.NAI.NAVAL_AIR_SUPERIORITY_IMPORTANCE = -0.1  -- vanilla 4.0 | Strategic importance of air superiority ( amount of enemy planes in area ) | [BIC]
NDefines.NAI.NAVAL_SHIP_AIR_IMPORTANCE = 75  -- vanilla 2.0 | Naval ship air importance | [BIC]
NDefines.NAI.NAVAL_SHIP_IN_PORT_AIR_IMPORTANCE = 50  -- vanilla 6.0 | Naval ship in the port air importance | [BIC]
NDefines.NAI.NAVAL_COMBAT_AIR_IMPORTANCE = 500.0  -- vanilla 8.0 | Naval combat air importance | [BIC]
NDefines.NAI.NAVAL_TRANSFER_AIR_IMPORTANCE = 50.0  -- vanilla 0.0 | Naval transfer air importance | [BIC]
NDefines.NAI.NAVAL_COMBAT_TRANSFER_AIR_IMPORTANCE = 750.0  -- vanilla 50.0 | Naval combat involving enemy land units | [BIC]
NDefines.NAI.NAVAL_IMPORTANCE_SCALE = 0.5  -- vanilla 0.65 | Naval total importance scale (every naval score get's multiplied by it) | [BIC]
NDefines.NAI.NAVAL_COMBAT_OUR_NAVY_MULT_ON_IMPORTANCE = 0.60  -- vanilla 0.35 | Naval region importance are scaled by our ships as well | [BIC]
NDefines.NAI.NAVAL_COMBAT_ALLY_NAVY_MULT_ON_IMPORTANCE = 0.25  -- vanilla 0.15 | Naval region importance are scaled by our ships as well | [BIC]
NDefines.NAI.NAVAL_COMBAT_MIN_OUR_NAVY_MULT_ON_IMPORTANCE = 1.0  -- vanilla 0.5 | Min scale factor for naval region importance from our ships | [BIC]
NDefines.NAI.NAVAL_COMBAT_MAX_OUR_NAVY_MULT_ON_IMPORTANCE = 2.0  -- vanilla 1.0 | Max scale factor for naval region importance from our ships | [BIC]

NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_PATROLLING = 15  -- vanilla 10.0 | Amount of naval patrol planes per ship on a patrol mission | [BIC]
NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_RAIDING = 20  -- vanilla 10.0 | Amount of naval patrol planes per ship on a convoy raid mission | [BIC]
NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_ESCORTING = 25  -- vanilla 10.0 | Amount of naval patrol planes per ship on a convoy escort mission | [BIC]

 -- =====================================================================================
 -- AIR AI — MINE PLANTING & SWEEPING
 -- =====================================================================================
NDefines.NAI.MINES_SWEEPING_PLANES_PER_MAX_MINES = 100  -- vanilla 150 | Amount of air planes request for mines sweeping when there is max amount of mines planted by enemy in certain region | [BIC]
NDefines.NAI.MINES_PLANTING_PLANES_PER_MAX_DESIRE = 100  -- vanilla 100 | Amount of air planes request for mines planting when there is max desire for it. | [BIC]
NDefines.NAI.MINES_PLANTING_DESIRE_PER_HOME_STATE = 0.5  -- vanilla 0.4 | Scoring for how much do we want to plant naval mines with our air wings if the naval region is adjacent to a home state. Multiple adjacent states increases the score. Max sum of score is 1.0. | [BIC]
NDefines.NAI.MINES_PLANTING_DESIRE_PER_ENEMY_STATE = 0.2  -- vanilla 0.1 | Scoring for how much do we want to plant naval mines with our air wings if the naval region is adjacent to the enemy state. Multiple adjacent states increases the score. Max sum of score is 1.0. | [BIC]
NDefines.NAI.MINES_PLANTING_DESIRE_PER_NAVAL_THREAT = 250  -- vanilla 250 | How much threat must be generated in the naval region, in order to get the maximum desire to plant naval mines in there. | [BIC]
NDefines.NAI.GIE_EXILE_AIR_MANPOWER_USAGE_RATIO = 0.2  -- vanilla 0.2 | AI will not deploy new exile wings when this percentage of available exile manpower is already used for wing recruitment. | [BIC]

 -- =====================================================================================
 -- ARMS MARKET AI
 -- =====================================================================================
NDefines.NAI.EQUIPMENT_MARKET_MAX_CIVS_FOR_PURCHASES_RATIO = 0.2  -- vanilla 0.1 | Ratio of available civilian factories to max use for equipment purchases (0.2 = 20 %, so 50 available civs would mean max ca 10 civs to spend on purchases at any one time). Gets modified by equipment_market_spend_factories AI strategy.
NDefines.NAI.EQUIPMENT_MARKET_NR_DELIVERIES_SOFT_MAX = 7  -- vanilla 10 | AI tries to adjust assigned factories and amount of equipment to keep nr deliveries at max this

 -- =====================================================================================
 -- LEND LEASE AI
 -- =====================================================================================
NDefines.NAI.DIPLOMACY_LEND_LEASE_MONTHS_TO_CANCEL = 16  -- vanilla 1 | AI will not cancel a lend lease offer until this time has passed
NDefines.NAI.DIPLOMACY_ACCEPT_ATTACHE_OPINION_TRASHHOLD = 0  -- vanilla 20 | Value of opinion that will remove accepting penalty for receiveing the attache
NDefines.NAI.MINIMUM_FUEL_DAYS_TO_ASK_LEND_LEASE = 60  -- vanilla 2 | AI will accept to lend lease fuel only if the player have less fuel than this number multiply by his max daily consumption.
NDefines.NAI.MINIMUM_FUEL_DAYS_TO_ACCEPT_LEND_LEASE = 60  -- vanilla 10 | AI will accept to lend lease fuel only if they have more fuel than this number multiply by their max daily consumption. Note that for a GiE asking to its host, we divide this number by 2.
NDefines.NAI.PROPOSE_LEND_LEASE_AIDESIRE_SAME_IDEOLOGY_CIVIL_WAR = 50  -- vanilla 25 | Added to AI desire to propose lend lease if recipent is same ideology and they are currently in civil war | [FAI]

NDefines.NAI.PROPOSE_LEND_LEASE_AIDESIRE_SAME_IDEOLOGY = 100  -- vanilla 40 | Added to AI desire to propose lend lease if recipent is same ideology (and AI can't declare war on recipient) | [FAI]
NDefines.NAI.LENDLEASE_FRACTION_OF_PRODUCTION = 0.75  -- vanilla 0.5 | Base fraction AI would send as lendlease | [FAI]
NDefines.NAI.LENDLEASE_FRACTION_OF_STOCKPILE = 0.75  -- vanilla 0.25 | Base fraction AI would send as lendlease | [FAI]
NDefines.NAI.MINIMUM_EQUIPMENT_TO_ASK_LEND_LEASE = -100  -- vanilla -100 | AI will accept to lend lease this equipment only if our stockpile is less than that. | [FAI]
NDefines.NAI.MINIMUM_CONVOY_TO_ASK_LEND_LEASE = 100  -- vanilla 30 | AI will accept to lend lease convoys only if our stockpile is less than that (special case because convoy stockpile can't be negative). | [FAI]

 -- =====================================================================================
 -- INTELLIGENCE AGENCY AI
 -- =====================================================================================
NDefines.NOperatives.AGENCY_AI_BASE_NUM_FACTORIES = 10.0  -- vanilla 25.0 | Used by AI to pace the upgrades. Formula : if( AGENCY_AI_BASE_NUM_FACTORIES <= num_civ_factories - num_upgrades * AGENCY_AI_PER_UPGRADE_FACTORIES ) | [FAI]
NDefines.NOperatives.AGENCY_AI_PER_UPGRADE_FACTORIES = 2.0  -- vanilla 6.0 | Used by AI to pace the upgrades. Formula : if( AGENCY_AI_BASE_NUM_FACTORIES <= num_civ_factories - num_upgrades * AGENCY_AI_PER_UPGRADE_FACTORIES ) | [FAI]

 -- =====================================================================================
 -- SUPPLY & LOGISTICS
 -- =====================================================================================
NDefines.NAI.MAX_DIST_PORT_RUSH = 40.0  -- vanilla 20.0 | If a unit is in enemy territory with no supply it will consider nearby ports within this distance. | [FAI]
NDefines.NAI.AVERAGE_SUPPLY_USE_PESSIMISM = 1.5  -- vanilla 1.5 | Multiplier for when AI calculates average supply use of entire army. | [FAI]
NDefines.NAI.MAX_SUPPLY_DIVISOR = 0.01  -- vanilla 1.75 | To make sure the AI does not overdeploy divisions. Higher number means more supply per unit. | [FAI]

NDefines.NSupply.AI_FRONT_MAX_UNITS_ENEMY_COUNT_FACTOR = 1.1  -- vanilla 1.2 | Make sure AI front MaxNrUnits is at least EnemyCount multiplied by this factor | [FAI]
NDefines.NSupply.AI_FRONT_MINIMUM_UNITS_PER_PROVINCE_FOR_SUPPLY_CALCULATIONS = 0.8  -- vanilla 1 | AI will try to keep this amount of divisions per province as a minimum when evaluating supply limitations for war fronts | [FAI]

NDefines.NAI.UPDATE_SUPPLY_BOTTLENECKS_FREQUENCY_HOURS = 144  -- vanilla 168; | Check for and try to fix supply bottlenecks this often. (168 hours = 1 week) | [FAI]
NDefines.NAI.FIX_SUPPLY_BOTTLENECK_SATURATION_THRESHOLD = 0.6  -- vanilla 0.85; | Try to fix supply bottlenecks if supply node saturation exceeds this value. | [FAI]

 -- =====================================================================================
 -- NAVAL INVASIONS
 -- =====================================================================================
NDefines.NAI.MAX_INVASION_SIZE = 64  -- vanilla 24 | max invasion group size | [FAI/BIC]
NDefines.NAI.MIN_INVASION_AREA_SIZE_FOR_FLOATING_HARBORS = 1  -- vanilla 15 | AI will consider using floating harbors for naval invasion if invasion area is larger than this many provinces | [FAI/BIC]
NDefines.NAI.MAX_DISTANCE_NAVAL_INVASION = 100.0  -- vanilla 200.0 | AI is extremely unwilling to plan naval invasions above this naval distance limit. | [FAI/BIC]

NDefines.NAI.INVASION_TARGET_DISTANCE_DENOMINATOR = 1000  -- vanilla 1000 | When selecting invasion target, divide this with (pixel) distance to get distance score factor. (Doesn't really affect the relative scoring, but it affects the linearity of the score function.)
NDefines.NAI.INVASION_TARGET_NO_PORT_FACTOR = 0.1  -- vanilla 0.3 | When selecting invasion target, multiply score with this if the target has no port | [FAI/BIC]
NDefines.NAI.INVASION_TARGET_TRUNCATION_SELECT_THRESHOLD = 0.9  -- vanilla 0.6 | When selecting invasion target, use this threshold for truncation selection. (1.0 means select highest scored target, 0.0 means select randomly from all possible target, 0.5 means select randomly from all targets with more than 50 % of highest score) | [FAI/BIC]
NDefines.NAI.INVASION_TARGET_PRIO_NOT_ENEMY_FACTOR = 0.15  -- vanilla 0.17 | When calculating priority for an invasion, factor the score with this if the target is not an actual enemy. | [FAI/BIC]

NDefines.NAI.ENEMY_HOME_AREA_RATIO_TO_DISABLE_INVASIONS = 0.3  -- vanilla 0.3 | if we are fighting against an enemy home area from our home area and if the enemy area is larger than this ratio, non strategy invasions are disabled | [BIC]
NDefines.NAI.ENEMY_NAVY_STRENGTH_DONT_BOTHER = 1.9  -- vanilla 2.5 | If the enemy has a navy at least these many times stronger that the own, don't bother invading | [BIC]
NDefines.NAI.RELATIVE_STRENGTH_TO_INVADE = 0.09  -- vanilla 0.08 | Compares the estimated strength of the country/faction compared to it's enemies to see if it should invade or stay at home to defend. | [BIC]
NDefines.NAI.RELATIVE_STRENGTH_TO_INVADE_DEFENSIVE = 0.1  -- vanilla 0.4 | Compares the estimated strength of the country/faction compared to it's enemies to see if it should invade or stay at home to defend, but while being a defensive country. | [BIC]

NDefines.NAI.MAX_UNIT_RATIO_FOR_INVASIONS = 0.3  -- vanilla 0.4 | countries won't use armies more than this ratio of total units for invasions | [BIC]
NDefines.NAI.MIN_UNIT_RATIO_FOR_INVASIONS = 0.1  -- vanilla 0.1 | don't allocate more divisions than this for naval invasions | [BIC]
NDefines.NAI.MIN_INVASION_PLAN_VALUE_TO_EXECUTE = 0.2  -- vanilla 0.3 | ai will only activate invasions if plan value is above this | [BIC]
NDefines.NAI.MIN_INVASION_ORG_FACTOR_TO_EXECUTE = 0.75  -- vanilla 0.9 | ai will only activate invasions if average org factor is above this | [BIC]
NDefines.NAI.MIN_INVASION_UNITS_READY_TO_EXECUTE = 0.9  -- vanilla 0.9 | ai will only activate invasions if this ratio of assigned units are ready | [BIC]

NDefines.NAI.INVASION_COASTAL_PROVS_PER_ORDER = 14  -- vanilla 24 | AI will consider one extra invasion per number of provinces stated here (num orders = total coast / this) | [BIC]
NDefines.NAI.NAVAL_INVADED_AREA_PRIO_DURATION = 90  -- vanilla 90 | after successful invasion, AI will prio the enemy area for this number of days | [BIC]
NDefines.NAI.NAVAL_INVADED_AREA_PRIO_MULT = 2.0  -- vanilla 1.2 | fronts that belongs to recent invasions gets more prio | [BIC]
NDefines.NAI.MIN_NUM_CONQUERED_PROVINCES_TO_DEPRIO_NAVAL_INVADED_FRONTS = 30  -- vanilla 20 | if you conquer this amount of provinces after a naval invasion, it will lose its prio status and will act as a regular front | [BIC]

NDefines.NAI.FAILED_INVASION_AVOID_DURATION = 60  -- vanilla 60 | after a failed invasion, AI will down-prioritize invading the same area again for this number of days | [BIC]
NDefines.NAI.FAILED_INVASION_AREA_PRIO_FACTOR = 0.5  -- vanilla 0.5 | for every failed invasion on an area, factor that area's invasion prio with this value | [BIC]
NDefines.NAI.FAILED_INVASION_PORT_PRIO_FACTOR = 0.66  -- vanilla 0.66 | for every failed invasion on a target port (province), factor the chance that we try to invade that same port again (relative to other ports) | [BIC]

NDefines.NAI.CURRENT_LAW_SCORE_BONUS = 30.0  -- vanilla 50.0 | current score will get an additional bonus to its ai weight | [FAI/BIC]

 -- =====================================================================================
 -- VNR NAVY AI — FLEET COMPOSITION
 -- =====================================================================================
 -- [VNR] All values in this section sourced from the VNR Navy AI overhaul mod
 -- Note: some of these may not apply when ai_navy strategy is active

NDefines.NAI.NAVY_PREFERED_MAX_SIZE = 45  -- vanilla 25 | AI will generally attempt to merge fleets into this size, but as a soft limit. | [VNR]
NDefines.NAI.CARRIER_TASKFORCE_MAX_CARRIER_COUNT = 6  -- vanilla 4 | optimum carrier count for carrier taskforces | [VNR]
NDefines.NAI.CAPITAL_TASKFORCE_MAX_CAPITAL_COUNT = 10  -- vanilla 12 | optimum capital count for capital taskforces | [VNR]
NDefines.NAI.SCREEN_TASKFORCE_MAX_SHIP_COUNT = 30  -- vanilla 12 | optimum screen count for screen taskforces | [VNR]
NDefines.NAI.SUB_TASKFORCE_MAX_SHIP_COUNT = 20  -- vanilla 16 , -- optimum sub count for sub taskforces | [VNR]
NDefines.NAI.SCREENS_TO_CAPITAL_RATIO = 3  -- vanilla 4.0 | screens to capital/carrier count in carrier & capital taskforces | [VNR]
NDefines.NAI.CAPITALS_TO_CARRIER_RATIO = 1.5  -- vanilla 1.5 | capital to carrier count in carrier taskfoces | [VNR]
NDefines.NAI.MIN_CAPITALS_FOR_CARRIER_TASKFORCE = 6  -- vanilla 6 | carrier fleets will at least have this amount of capitals | [VNR]
NDefines.NAI.REPAIR_TASKFORCE_SIZE = 5  -- vanilla 4 | repair taskforce sizes are limited to this many ships | [VNR]
NDefines.NAI.MAIN_SHIP_RATIO_TO_SPLIT = 1.6  -- vanilla 1.8 | if main ship ratio in a task force is larger than this, split it. (If a carrier TF wants 4 carriers (see defines above), but it has more than [this * 4] carriers, then we try to split the TF.) | [VNR]
NDefines.NAI.MIN_MAIN_SHIP_RATIO = 0.5  -- vanilla 0.3 | if main ship ratio is below this, steal other ships. | [VNR]
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MIN = 0.10  -- vanilla 0.20 | maximum ratio of all screen-ships forces to be used in convoy defense (increases up to max as AI loses convoys). | [VNR]
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MAX = 0.25  -- vanilla 0.70 | maximum ratio of all screen-ships forces to be used in convoy defense (increases up to max as AI loses convoys). | [VNR]
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_LAYING = 0.0  -- vanilla 0.10 | maximum ratio of screens forces to be used in mine laying | [VNR]
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING_PRIO = 0.20  -- vanilla 0.8 | if you have mines near your owned states, you will start priotize mine missions and will assign this ratio of screens | [VNR]
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING_PRIO_MIN_MINES = 250  -- vanilla 10 | if there are at least this many mines near our owned states, we will prioritize mine sweeping | [VNR]
NDefines.NAI.SUGGESTED_NUM_MAX_CARRIERS = 4  -- vanilla 4 | We don't know exactly how many planes we should use when evaluating AI build so we need a suggested number to start things off. ALso used for task force suggestions list. | [VNR]
NDefines.NNavy.MAX_SHIP_COUNT_FOR_DOMINANCE_PATROL_ROLE_ASSIGNMENT = 8  -- vanilla 15 | define the maximum number of ships that should be in a task force for it to be considered a dominance building patrol (provided they have any capitals as well) | [VNR]
NDefines.NNavy.MIN_SHIP_COUNT_FOR_TASK_FORCE_ROLE_ASSIGNMENT = 1  -- vanilla 2 | define the minimum number of ship that should be in a task force for it to be considered a patrol or an escort task force (used to the insignia assignment, see TASK_FORCE_ROLE_TO_INSIGNIA) | [VNR]

 -- =====================================================================================
 -- VNR NAVY AI — PRODUCTION & DESIGNS
 -- =====================================================================================
NDefines.NAI.SHIPS_PRODUCTION_BASE_COST = 25000  -- vanilla 10000 | Used by the AI to normalize IC values when picking what ship to build. | [VNR]
NDefines.NAI.NAVAL_DOCKYARDS_SHIP_FACTOR = 2.5  -- vanilla 1.5 | The extent to which number of dockyards play into amount of sips a nation wants | [VNR]
NDefines.NAI.PRODUCTION_MAX_PROGRESS_TO_SWITCH_NAVAL = 0  -- vanilla 0.1 | AI will not replace ships being built by newer types if progress is above this | [VNR]
NDefines.NAI.PRODUCTION_WAIT_TO_FINISH_IF_EXPENSIVE = 0.02  -- vanilla 0.1 | If produced item is expensive (producing less than one/week), wait to finish item if progress is above this | [VNR]
NDefines.NAI.WANTED_CARRIER_PLANES_PER_CARRIER_CAPACITY_FACTOR = 2  -- vanilla 1.5 | Scales how many carrier planes the AI want per carrier deck space. | [VNR]
NDefines.NAI.WANTED_CARRIER_PLANES_PER_CARRIER_CAPACITY_IN_PRODUCTION_FACTOR = 1.2  -- vanilla 1 | Scales how many carrier planes the AI want per deck space of carriers in production. | [VNR]
NDefines.NAI.CARRIER_CAPACITY_IN_PRODUCTION_MAX_DAYS_LEFT_TO_INCLUDE_FACTOR = 180  -- vanilla 365 | Carriers in production that will take more days to complete than this value will be ignored when calculating the above. | [VNR]
NDefines.NAI.AI_WANTED_CARRIER_BASED_PLANES_FACTOR = 1.5  -- vanilla 1.0 | Factor applied to desire for carrier based planes (total carrier space * define) | [VNR]
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_NAVAL_DOCTRINE = 1  -- vanilla 0.5 | How quickly is desire to unlock naval doctrines accumulated? | [VNR]
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_NAVAL_EQUIPMENT = 1  -- vanilla 1.0 | How quickly is desire to update/create naval equipment variants accumulated? | [VNR]
NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_NAVY = 30  -- vanilla 50 | Same as above but for the ship designer. | [VNR]
NDefines.NAI.VARIANT_CREATION_XP_RESERVE_NAVY = 30  -- vanilla 50 | Same as above but for navy XP. | [VNR]
NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_AIR = 15  -- vanilla 25 | Same as above but for the plane designer. | [VNR]
NDefines.NAI.VARIANT_CREATION_XP_RESERVE_AIR = 30  -- vanilla 50 | Same as above but for air XP. | [VNR]
NDefines.NAI.CONVOY_NEED_SAFETY_BUFFER = 1.60  -- vanilla 1.30 | AI will try and keep 15% more convoys than what it needs. | [VNR]

 -- =====================================================================================
 -- VNR NAVY AI — MISSIONS & PRIORITIES
 -- =====================================================================================
NDefines.NAI.PEACE_TIME_NAVY_FUEL_FACTOR = 0.75  -- vanilla 0.25 | Percentage of fuel available to navy that is allowed to use for missiosn during peace time | [VNR]
NDefines.NAI.AI_MIN_DOMINANCE_MARGIN = 250  -- vanilla 200 | When trying to get control of a region, AI will try to exceed the required dominance by at least this amount | [VNR]

NDefines.NAI.MIN_NAVAL_MISSION_PRIO_TO_ASSIGN = {  -- vanilla { | priorities for regions to get assigned to a mission
	0,   -- HOLD
	200, -- PATROL
	200, -- STRIKE FORCE
	200, -- CONVOY RAIDING
	100, -- CONVOY ESCORT
	100, -- MINES PLANTING
	100, -- MINES SWEEPING
	0,   -- TRAIN
	0,   -- RESERVE_FLEET
	100, -- NAVAL INVASION SUPPORT
}

NDefines.NAI.HIGH_PRIO_NAVAL_MISSION_SCORES = {  -- vanilla { | priorities for regions to get assigned to a mission
	0,      -- HOLD
	100000, -- PATROL
	50000,  -- STRIKE FORCE
	1500,   -- CONVOY RAIDING
	1000,   -- CONVOY ESCORT
	-1,     -- MINES PLANTING
	300,    -- MINES SWEEPING
	0,      -- TRAIN
	0,      -- RESERVE_FLEET
	1000,   -- NAVAL INVASION SUPPORT
}

NDefines.NAI.MAX_MISSION_PER_TASKFORCE = {  -- vanilla { | max mission region/taskforce ratio
	0,   -- HOLD
	1.5, -- PATROL
	3,   -- STRIKE FORCE
	1.5, -- CONVOY RAIDING
	4,   -- CONVOY ESCORT
	2,   -- MINES PLANTING
	2,   -- MINES SWEEPING
	0,   -- TRAIN
	0,   -- RESERVE_FLEET
	3,   -- NAVAL INVASION SUPPORT
}

NDefines.NAI.CONVOY_ESCORT_SCORE_FROM_CONVOYS = 25  -- vanilla 15 | score for each convoy you have in area | [VNR]
NDefines.NAI.MAX_ALLOWED_NAVAL_DANGER = 100  -- vanilla 80 | AI will ignore naval paths that has danger value of above this threshold while assigning units | [VNR]
NDefines.NAI.REGION_THREAT_PER_SUNK_CONVOY = 20  -- vanilla 25 | Threat value per convoy sunk in a region. Decays over time. | [VNR]
NDefines.NAI.REGION_CONVOY_DANGER_DAILY_DECAY = 2  -- vanilla 1 | When convoys are sunk it generates threat in the region which the AI uses to prio nalval missions | [VNR]
NDefines.NAI.DANGEROUS_ENEMY_ARMY_SIZE = 150  -- vanilla 100 | If the size of the enemy's army of the attacking country is more than this value, the AI will add naval invasion defense importance | [VNR]

NDefines.NAI.NAVAL_STRIKE_FORCE_OBJECTIVE_IMPORTANCE = {  -- vanilla { -- ordering of this list is important! | [VNR]
	0.1875,  -- invasion support
	0.2,     -- invasion defense
	0, 0,    -- others (MineSweeping, MineLaying)
	0.0625,  -- generic coast defense
	0, 0,    -- others (ConvoyRaiding, ConvoyProtection)
	0.275,   -- naval dominance strategy (vanilla 0.125)
	0, 0, 0  -- others (Training, NavalBlockade, StrikeForce)
}

NDefines.NAI.CONVOY_RAIDING_TARGET_RECALC_DAYS = 30  -- vanilla 15 | Each X days, the AI will reevaluate which regions to convoy raid (because enemy convoy usage or trade routes might change) | [VNR]
NDefines.NAI.STRIKE_FORCE_TARGET_RECALC_DAYS = 20  -- vanilla 5 | Each X days, the AI will reevaluate which regions to put strike forces in (because patrol coverage will change) | [VNR]
NDefines.NAI.AI_OBJECTIVE_DEFAULT_TARGET_RECALC_DAYS = 20  -- vanilla 7 | Each X days, the AI will reevaluate which regions to target for naval missions (this is the default value, but can be overriden by specific objectives, see CONVOY_RAIDING_TARGET_RECALC_DAYS) | [VNR]
NDefines.NAI.MAX_FULLY_TRAINED_SHIP_RATIO_FOR_TRAINING = 0.95  -- vanilla 0.7 | ai will not train a taskforce if fully trained ships are above this ratio | [VNR]
NDefines.NNavy.AI_MAX_TASKFORCES_PER_TRAINING_OBJECTIVE = 20  -- vanilla 5 | Max number of taskforces we desire for AI to put in each fleet that is training. | [VNR]
NDefines.NAI.MAX_FUEL_CONSUMPTION_RATIO_FOR_AIR_TRAINING = 0.35  -- vanilla 0.20 | ai will use at most this ratio of affordable fuel for air training | [VNR]
NDefines.NAI.MAX_FUEL_CONSUMPTION_RATIO_FOR_NAVY_TRAINING = 0.50  -- vanilla 0.20 | ai will use at most this ratio of affordable fuel for naval training | [VNR]

 -- =====================================================================================
 -- VNR NAVY AI — MISC
 -- =====================================================================================
NDefines.NAI.NAVAL_BASE_RATIO_ALLOCATED_FOR_REPAIRS = 0.1  -- vanilla 0.25 | ai will allocate at most this ratio of dockyards for repairs in peace time | [VNR]
NDefines.NAI.NAVAL_BASE_RATIO_ALLOCATED_FOR_REPAIRS_IN_WAR_TIME = 0.5  -- vanilla 0.6 | ai will allocate at most this ratio of dockyards for repairs in war time | [VNR]
NDefines.NAI.SHIP_STR_RATIO_PUT_ON_REPAIRS = 0.8  -- vanilla 0.8 | if ships are damaged below this ratio, they are put for repairs | [VNR]
NDefines.NAI.NAVAL_ACCESS_SCORE_PENALTY_PER_EXISTING_ACCESS_AT_WAR = 1000  -- vanilla 150 | [VNR]
NDefines.NAI.NAVAL_ACCESS_SCORE_PENALTY_PER_EXISTING_ACCESS = 500  -- vanilla 250 | [VNR]
NDefines.NAI.AIR_BASE_ACCESS_SCORE_PENALTY_PER_EXISTING_ACCESS_AT_WAR = 1000  -- vanilla 150 | [VNR]
NDefines.NAI.AIR_BASE_ACCESS_SCORE_PENALTY_PER_EXISTING_ACCESS = 800  -- vanilla 250 | [VNR]
