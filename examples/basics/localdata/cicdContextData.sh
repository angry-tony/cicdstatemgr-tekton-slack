CICD_channel="stage"
CICD_pipelines__start__event_handlers__some_event__notify__message="{{ basicMacro('some-event fired in the start pipeline') }}
"
CICD_pipelines__test__event_handlers__another_event__notify__message="{{ basicMacro('another-event fired in the test pipeline') }}
"
CICD_pipelines__build__event_handlers__testEvent__notify__message="{{ basicMacro('testEventFired!!! yes...') }}
"
CICD_pipelines__build__event_handlers__testNotifyEvent__notify__message="{{ basicMacro('build is successful') }}
"
CICD_pipelines__build__event_handlers__testNotifyEvent__notify__capture_response_data__0__from="{{ body.data.channel }}"
CICD_pipelines__build__event_handlers__testNotifyEvent__notify__capture_response_data__0__to="state.lastPostedToNotifyChannel"
CICD_pipelines__build__event_handlers__testNotifyEvent__notify__capture_response_data__1__from="{{ body|tojson }}"
CICD_pipelines__build__event_handlers__testNotifyEvent__notify__capture_response_data__1__to="state.lastPostedHttpResponse"
CICD_pipelines__build__event_handlers__testRespondEvent__respond__someArbitraryKey="lastPostedDataRandomId={{ state.lastPostedDataRandomId }}"
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
CICD_pipelines__build__event_handlers__testEmbeddedJsonEvent__notify__message="Here is some JSON from c:\windowspath\test and "quotes" { "dog":"beagle" }
"
CICD_pipelines__test2__event_handlers__blah_event__manual_choice__title="test manual choice with generators"
CICD_pipelines__test2__event_handlers__blah_event__manual_choice__capture_response_data__0__from="{{ body|json_dumps }}"
CICD_pipelines__test2__event_handlers__blah_event__manual_choice__capture_response_data__0__to="state.lastPostedHttpResponse"
CICD_pipelines__test2__event_handlers__blah_event__manual_choice__choice_generators__testGenerator1__foreach="state.choiceGeneratorItems"
CICD_pipelines__test2__event_handlers__blah_event__manual_choice__choice_generators__testGenerator1__iterator="currentItem"
CICD_pipelines__test2__event_handlers__blah_event__manual_choice__choice_generators__testGenerator1__template="testkey-{{currentItem.name}}:
  header: |
    {{'{{'}} echo('{{currentItem.name}}') {{'}}'}}
  options:
    - style: primary
      value: "{{'{{'}} echo('{{currentItem.name}} {{currentItem.description}}') {{'}}'}}"
      text: '{{currentItem.name}}'
    - style: primary
      value: "{{'{{'}} echo('{{currentItem.name}} {{currentItem.description}}') {{'}}'}}"
      text: '{{currentItem.name}}'
"
CICD_pipelines__test2__event_handlers__blah_event__manual_choice__choices__choiceGroup1__header="Choice group one:"
CICD_pipelines__test2__event_handlers__blah_event__manual_choice__choices__choiceGroup1__options__0__text="Choice 1"
CICD_pipelines__test2__event_handlers__blah_event__manual_choice__choices__choiceGroup1__options__0__value="c1"
CICD_pipelines__test2__event_handlers__blah_event__manual_choice__choices__choiceGroup1__options__1__text="Choice 2"
CICD_pipelines__test2__event_handlers__blah_event__manual_choice__choices__choiceGroup1__options__1__value="c2"
CICD_appPipelinesConfig__bases__0="base1.yaml"
CICD_appPipelinesConfig__jinja2_macros__helloWorld="{%- macro helloWorld(msg) -%}
  Hello world msg = {{msg}}
{%- endmacro -%}
"
CICD_appPipelinesConfig__variables__myVar1="test"
CICD_appPipelinesConfig__cicd_contexts__stage__channel="stage"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testEvent__notify__message="{{ basicMacro('testEventFired!!! yes...') }}
"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testNotifyEvent__notify__message="{{ basicMacro('build is successful') }}
"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testNotifyEvent__notify__capture_response_data__0__from="{{ body.data.channel }}"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testNotifyEvent__notify__capture_response_data__0__to="state.lastPostedToNotifyChannel"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testNotifyEvent__notify__capture_response_data__1__from="{{ body|tojson }}"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testNotifyEvent__notify__capture_response_data__1__to="state.lastPostedHttpResponse"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testRespondEvent__respond__someArbitraryKey="lastPostedDataRandomId={{ state.lastPostedDataRandomId }}"
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
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__build__event_handlers__testEmbeddedJsonEvent__notify__message="Here is some JSON from c:\windowspath\test and "quotes" { "dog":"beagle" }
"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__test2__event_handlers__blah_event__manual_choice__title="test manual choice with generators"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__test2__event_handlers__blah_event__manual_choice__capture_response_data__0__from="{{ body|json_dumps }}"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__test2__event_handlers__blah_event__manual_choice__capture_response_data__0__to="state.lastPostedHttpResponse"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__test2__event_handlers__blah_event__manual_choice__choice_generators__testGenerator1__foreach="state.choiceGeneratorItems"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__test2__event_handlers__blah_event__manual_choice__choice_generators__testGenerator1__iterator="currentItem"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__test2__event_handlers__blah_event__manual_choice__choice_generators__testGenerator1__template="testkey-{{currentItem.name}}:
  header: |
    {{'{{'}} echo('{{currentItem.name}}') {{'}}'}}
  options:
    - style: primary
      value: "{{'{{'}} echo('{{currentItem.name}} {{currentItem.description}}') {{'}}'}}"
      text: '{{currentItem.name}}'
    - style: primary
      value: "{{'{{'}} echo('{{currentItem.name}} {{currentItem.description}}') {{'}}'}}"
      text: '{{currentItem.name}}'
"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__test2__event_handlers__blah_event__manual_choice__choices__choiceGroup1__header="Choice group one:"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__test2__event_handlers__blah_event__manual_choice__choices__choiceGroup1__options__0__text="Choice 1"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__test2__event_handlers__blah_event__manual_choice__choices__choiceGroup1__options__0__value="c1"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__test2__event_handlers__blah_event__manual_choice__choices__choiceGroup1__options__1__text="Choice 2"
CICD_appPipelinesConfig__cicd_contexts__stage__pipelines__test2__event_handlers__blah_event__manual_choice__choices__choiceGroup1__options__1__value="c2"
CICD_state__cicdContextDataId="context-data-id-1"
CICD_state__cicdContextName="stage"
CICD_state__key1="valuechanged"
CICD_state__templateTest="{{tmplctx.prop1}}"
CICD_state__key2="value2"
CICD_state__fileBody__dog="beagle"
CICD_state__fileBody__bark__quality="high"
CICD_state__fileBody__bark__volume="loud"
CICD_state__testList__0="a"
CICD_state__testSet__0="a"
CICD_state__testSet__1="b"
CICD_state__testSet__2="c"
CICD_state__testSet__3="d"
CICD_state__testHeader2Value="myvalueforheader2"
CICD_state__triggerAutoArg1="dummyVal"
CICD_state__postedData__85188__body__message="This is basicMacro! msg = testEventFired!!! yes..."
CICD_state__postedData__85188__headers__userAgent="python-requests/2.24.0"
CICD_state__postedData__46441__body__message="This is basicMacro! msg = build is successful"
CICD_state__postedData__46441__headers__userAgent="python-requests/2.24.0"
CICD_state__postedData__76689__body__message="Here is some JSON from c:\windowspath\test and "quotes" { "dog":"beagle" }"
CICD_state__postedData__76689__headers__userAgent="python-requests/2.24.0"
CICD_state__lastPostedDataRandomId="76689"
CICD_state__lastPostedToNotifyChannel="stage"
CICD_state__lastPostedHttpResponse="{"args": {}, "data": {"channel": "stage", "randomId": "17522", "choices": [{"header": "Choice group one:", "options": [{"value": "c1", "text": "Choice 1"}, {"value": "c2", "text": "Choice 2"}]}, {"header": "item-one", "options": [{"value": "item-one item1 desc", "text": "item-one"}, {"value": "item-one item1 desc", "text": "item-one"}]}, {"header": "item-two", "options": [{"value": "item-two item2 desc", "text": "item-two"}, {"value": "item-two item2 desc", "text": "item-two"}]}, {"header": "item-three", "options": [{"value": "item-three item3 desc", "text": "item-three"}, {"value": "item-three item3 desc", "text": "item-three"}]}]}, "files": {}, "form": {}, "headers": {"x-forwarded-proto": "https", "x-forwarded-port": "443", "host": "postman-echo.com", "x-amzn-trace-id": "Root=1-5f774ad1-3925773425d4f493354f72dc", "content-length": "1955", "user-agent": "python-requests/2.24.0", "accept-encoding": "gzip, deflate", "accept": "*/*", "content-type": "application/json; charset=UTF-8", "authorization": "Bearer FAKE_TOKEN", "cache-control": "no-cache"}, "json": {"channel": "stage", "randomId": "17522", "choices": [{"header": "Choice group one:", "options": [{"value": "c1", "text": "Choice 1"}, {"value": "c2", "text": "Choice 2"}]}, {"header": "item-one", "options": [{"value": "item-one item1 desc", "text": "item-one"}, {"value": "item-one item1 desc", "text": "item-one"}]}, {"header": "item-two", "options": [{"value": "item-two item2 desc", "text": "item-two"}, {"value": "item-two item2 desc", "text": "item-two"}]}, {"header": "item-three", "options": [{"value": "item-three item3 desc", "text": "item-three"}, {"value": "item-three item3 desc", "text": "item-three"}]}]}, "url": "https://postman-echo.com/post"}"
CICD_state__choiceGeneratorItems__item1__name="item-one"
CICD_state__choiceGeneratorItems__item1__description="item1 desc"
CICD_state__choiceGeneratorItems__item2__name="item-two"
CICD_state__choiceGeneratorItems__item2__description="item2 desc"
CICD_state__choiceGeneratorItems__item3__name="item-three"
CICD_state__choiceGeneratorItems__item3__description="item3 desc"
CICD_variables__baseVar1="baseVarVal1"
CICD_variables__myVar1="test"
