CICD_channel="stage"
CICD_pipelines__start__event_handlers__some_event__notify__message="{{ basicMacro('some-event fired in the start pipeline') }}
"
CICD_pipelines__build__event_handlers__testNotifyEvent__notify__message="{{ basicMacro('build is successful') }}
"
CICD_pipelines__build__event_handlers__testNotifyEvent__notify__capture_response_data__0__from="{{ body.data.channel }}"
CICD_pipelines__build__event_handlers__testNotifyEvent__notify__capture_response_data__0__to="state.lastPostedToNotifyChannel"
CICD_pipelines__build__event_handlers__testNotifyEvent__notify__capture_response_data__1__from="{{ body|tojson }}"
CICD_pipelines__build__event_handlers__testNotifyEvent__notify__capture_response_data__1__to="state.lastPostedHttpResponse"
CICD_pipelines__build__event_handlers__testRespondEvent__respond__if="{{ state.lastPostedHttpResponse }}"
CICD_pipelines__build__event_handlers__testRespondEvent__respond__url="{{ (state.lastPostedHttpResponse|from_json).url }}"
CICD_pipelines__build__event_handlers__testRespondEvent__respond__message="dummy responder message for {{ state.lastPostedDataRandomId }}
"
CICD_pipelines__build__event_handlers__testSetValuesEvent__set_values__extractLastPostedNotifyMessage__if="{%- if state.lastPostedHttpResponse -%}
  1
{%- endif -%}  
"
CICD_pipelines__build__event_handlers__testSetValuesEvent__set_values__extractLastPostedNotifyMessage__set__0__from="{%- set lastPostedHttpResponse = (state.lastPostedHttpResponse|from_json) -%}
{{- lastPostedHttpResponse.data.message -}}
"
CICD_pipelines__build__event_handlers__testSetValuesEvent__set_values__extractLastPostedNotifyMessage__set__0__to="state.lastPostedNotifyMessage"
CICD_pipelines__build__event_handlers__testTriggerPipelineEvent__trigger_pipeline__name="build"
CICD_pipelines__build__event_handlers__testTriggerPipelineEvent__trigger_pipeline__args__whatever="{{state.postedData[state.lastPostedDataRandomId].headers.userAgent}}"
CICD_pipelines__build__event_handlers__testManualChoiceEvent__manual_choice__title="{{ basicMacro('here are my choices') }}
"
CICD_pipelines__build__event_handlers__testManualChoiceEvent__manual_choice__choices__choiceGroup1__header="Choice group one:"
CICD_pipelines__build__event_handlers__testManualChoiceEvent__manual_choice__choices__choiceGroup1__options__0__text="Choice 1"
CICD_pipelines__build__event_handlers__testManualChoiceEvent__manual_choice__choices__choiceGroup1__options__0__value="c1"
CICD_pipelines__build__event_handlers__testManualChoiceEvent__manual_choice__choices__choiceGroup1__options__1__text="Choice 2"
CICD_pipelines__build__event_handlers__testManualChoiceEvent__manual_choice__choices__choiceGroup1__options__1__value="c2"
CICD_pipelines__build__event_handlers__testManualChoiceEvent__manual_choice__choices__choiceGroup2__header="Choice group two {{ echo('blah') }}:"
CICD_pipelines__build__event_handlers__testManualChoiceEvent__manual_choice__choices__choiceGroup2__options__0__text="{{state.postedData[state.lastPostedDataRandomId].headers.userAgent}}"
CICD_pipelines__build__event_handlers__testManualChoiceEvent__manual_choice__choices__choiceGroup2__options__0__value="{{state.postedData[state.lastPostedDataRandomId].headers.userAgent}}"
CICD_appPipelinesConfig__bases__0="base1.yaml"
CICD_appPipelinesConfig__jinja2_macros__helloWorld="{%- macro helloWorld(msg) -%}
  Hello world msg = {{msg}}
{%- endmacro -%}
"
CICD_appPipelinesConfig__variables__myVar1="test"
CICD_appPipelinesConfig__cicd_contexts__stage__channel="stage"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testNotifyEvent__notify__message="{{ basicMacro('build is successful') }}
"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testNotifyEvent__notify__capture_response_data__0__from="{{ body.data.channel }}"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testNotifyEvent__notify__capture_response_data__0__to="state.lastPostedToNotifyChannel"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testNotifyEvent__notify__capture_response_data__1__from="{{ body|tojson }}"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testNotifyEvent__notify__capture_response_data__1__to="state.lastPostedHttpResponse"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testRespondEvent__respond__if="{{ state.lastPostedHttpResponse }}"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testRespondEvent__respond__url="{{ (state.lastPostedHttpResponse|from_json).url }}"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testRespondEvent__respond__message="dummy responder message for {{ state.lastPostedDataRandomId }}
"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testSetValuesEvent__set_values__extractLastPostedNotifyMessage__if="{%- if state.lastPostedHttpResponse -%}
  1
{%- endif -%}  
"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testSetValuesEvent__set_values__extractLastPostedNotifyMessage__set__0__from="{%- set lastPostedHttpResponse = (state.lastPostedHttpResponse|from_json) -%}
{{- lastPostedHttpResponse.data.message -}}
"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testSetValuesEvent__set_values__extractLastPostedNotifyMessage__set__0__to="state.lastPostedNotifyMessage"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testTriggerPipelineEvent__trigger_pipeline__name="build"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testTriggerPipelineEvent__trigger_pipeline__args__whatever="{{state.postedData[state.lastPostedDataRandomId].headers.userAgent}}"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testManualChoiceEvent__manual_choice__title="{{ basicMacro('here are my choices') }}
"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testManualChoiceEvent__manual_choice__choices__choiceGroup1__header="Choice group one:"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testManualChoiceEvent__manual_choice__choices__choiceGroup1__options__0__text="Choice 1"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testManualChoiceEvent__manual_choice__choices__choiceGroup1__options__0__value="c1"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testManualChoiceEvent__manual_choice__choices__choiceGroup1__options__1__text="Choice 2"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testManualChoiceEvent__manual_choice__choices__choiceGroup1__options__1__value="c2"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testManualChoiceEvent__manual_choice__choices__choiceGroup2__header="Choice group two {{ echo('blah') }}:"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testManualChoiceEvent__manual_choice__choices__choiceGroup2__options__0__text="{{state.postedData[state.lastPostedDataRandomId].headers.userAgent}}"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testManualChoiceEvent__manual_choice__choices__choiceGroup2__options__0__value="{{state.postedData[state.lastPostedDataRandomId].headers.userAgent}}"
CICD_jinja2Macros__byName__basicMacro="{%- macro basicMacro(msg) -%}
  This is basicMacro! msg = {{msg}}
{%- endmacro -%}
"
CICD_jinja2Macros__byName__echo="{%- macro echo(msg) -%}
  {{msg}}
{%- endmacro -%}
"
CICD_jinja2Macros__byName__random="{%- macro random() -%}
  {{ range(10000, 99999) | random }}
{%- endmacro -%}
"
CICD_jinja2Macros__byName__helloWorld="{%- macro helloWorld(msg) -%}
  Hello world msg = {{msg}}
{%- endmacro -%}
"
CICD_jinja2Macros__all="{%- macro basicMacro(msg) -%}
  This is basicMacro! msg = {{msg}}
{%- endmacro -%}{%- macro echo(msg) -%}
  {{msg}}
{%- endmacro -%}{%- macro random() -%}
  {{ range(10000, 99999) | random }}
{%- endmacro -%}{%- macro helloWorld(msg) -%}
  Hello world msg = {{msg}}
{%- endmacro -%}"
CICD_state__cicdContextDataId="context-data-id-1"
CICD_state__cicdContextName="stage"
CICD_state__key1="value1"
CICD_state__templateTest="{{tmplctx.prop1}}"
CICD_state__key2="value2"
CICD_state__fileBody__dog="beagle"
CICD_state__fileBody__bark__quality="high"
CICD_state__fileBody__bark__volume="loud"
CICD_variables__baseVar1="baseVarVal1"
CICD_variables__myVar1="test"
