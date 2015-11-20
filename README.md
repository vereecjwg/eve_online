# EveOnline API (XML and CREST)

[![Gem Version](https://badge.fury.io/rb/eve_online.svg)](https://badge.fury.io/rb/eve_online)
[![Code Climate](https://codeclimate.com/github/biow0lf/eve_online/badges/gpa.svg)](https://codeclimate.com/github/biow0lf/eve_online)
[![Test Coverage](https://codeclimate.com/github/biow0lf/eve_online/badges/coverage.svg)](https://codeclimate.com/github/biow0lf/eve_online/coverage)
[![Build Status](https://travis-ci.org/biow0lf/eve_online.svg?branch=master)](https://travis-ci.org/biow0lf/eve_online)
[![Dependency Status](https://gemnasium.com/biow0lf/eve_online.svg)](https://gemnasium.com/biow0lf/eve_online)
[![security](https://hakiri.io/github/biow0lf/eve_online/master.svg)](https://hakiri.io/github/biow0lf/eve_online/master)

This gem implement Ruby API for EveOnline MMORPG. Both, XML and CREST API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'eve_online'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install eve_online

## Supported ruby versions:

 * MRI 2.0
 * MRI 2.1
 * MRI 2.2

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Issue reports and pull requests are welcome on GitHub at https://github.com/biow0lf/eve_online.

## Changelog

master: [Characters XML API](http://wiki.eve-id.net/APIv2_Account_Characters_XML).

v0.2.0: [AccountBalance XML API](http://wiki.eve-id.net/APIv2_Char_AccountBalance_XML), [APIKeyInfo XML API](http://wiki.eve-id.net/APIv2_Account_APIKeyInfo_XML), [AccountStatus XML API](http://wiki.eve-id.net/APIv2_Account_AccountStatus_XML).

v0.1.0: [ServerStatus XML API](http://wiki.eve-id.net/APIv2_Server_ServerStatus_XML).

## TODO

- [x] [APIv2 Account AccountStatus XML](http://wiki.eve-id.net/APIv2_Account_AccountStatus_XML)
- [x] [APIv2 Account APIKeyInfo XML](http://wiki.eve-id.net/APIv2_Account_APIKeyInfo_XML)
- [x] [APIv2 Account Characters XML](http://wiki.eve-id.net/APIv2_Account_Characters_XML)

- [ ] [APIv2 API CallList XML](http://wiki.eve-id.net/APIv2_API_CallList_XML)

- [x] [APIv2 Char AccountBalance XML](http://wiki.eve-id.net/APIv2_Char_AccountBalance_XML)
- [ ] [APIv2 Char AssetList XML](http://wiki.eve-id.net/APIv2_Char_AssetList_XML)
- [ ] [APIv2 Char CalendarEventAttendees XML](http://wiki.eve-id.net/APIv2_Char_CalendarEventAttendees_XML)
- [ ] [APIv2 Char CharacterSheet XML](http://wiki.eve-id.net/APIv2_Char_CharacterSheet_XML)
- [ ] [APIv2 Char ContactList XML](http://wiki.eve-id.net/APIv2_Char_ContactList_XML)
- [ ] [APIv2 Char ContactNotifications XML](http://wiki.eve-id.net/APIv2_Char_ContactNotifications_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Char_Contracts_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Char_ContractItems_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Char_ContractBids_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Char_Factional_Warfare_Stats_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Char_IndustryJobs_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Char_KillLog_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Char_Locations_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Char_MailBodies_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Char_mailinglists_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Char_MailMessages_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Char_MarketOrders_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Char_Medals_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Char_Notifications_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Char_NotificationTexts_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Char_Research_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Char_SkillInTraining_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Char_SkillQueue_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Char_Standings_XML)
- [ ] [](http://wiki.eve-id.net/APIv2Char_UpcomingCalendarEvents_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Char_JournalEntries_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Char_MarketTransactions_XML)

- [ ] [](http://wiki.eve-id.net/APIv2_Corp_AccountBalance_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_AssetList_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_ContactList_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_ContainerLog_XML)
- [ ] [](http://wiki.eve-id.net/APIv3_Corp_Contracts_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_ContractItems_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Char_ContractBids_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_CorporationSheet_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_Factional_Warfare_Stats_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_IndustryJobs_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_KillLog_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_Locations_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_MarketOrders_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_Medals_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_MemberMedals_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_MemberSecurity_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_MemberSecurityLog_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_MemberTracking_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_OutpostList_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_OutpostServiceDetail_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_Shareholders_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_Standings_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_StarbaseDetail_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_StarbaseList_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_CorporationTitles_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_JournalEntries_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Corp_MarketTransactions_XML)

- [ ] [](http://wiki.eve-id.net/APIv2_Eve_AllianceList_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Certificate_Tree_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Page_Index?title=APIv2_Eve_CharacterAffiliation_XML&action=edit&redlink=1)
- [ ] [](http://wiki.eve-id.net/APIv2_Eve_CharacterID_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Eve_CharacterInfo_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Eve_CharacterName_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Eve_ConquerableStationList_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Eve_ErrorList_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Factional_Warfare_Stats_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Factional_Warfare_Top100_Stats_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Eve_RefTypes_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Eve_SkillTree_XML)
- [ ] [](http://wiki.eve-id.net/APIv2_Eve_TypeName_XML)

- [ ] [APIv2 Factional Warfare Occupancy XML](http://wiki.eve-id.net/APIv2_Factional_Warfare_Occupancy_XML)
- [ ] [APIv2 Map Jumps XML](http://wiki.eve-id.net/APIv2_Map_Jumps_XML)
- [ ] [APIv2 Map Kills XML](http://wiki.eve-id.net/APIv2_Map_Kills_XML)
- [ ] [APIv2 Map Sovereignty XML](http://wiki.eve-id.net/APIv2_Map_Sovereignty_XML)
- [ ] [APIv2 Map Sovereignty Status XML](http://wiki.eve-id.net/APIv2_Map_Sovereignty_Status_XML)

- [ ] [APIv2 Eve Image Service](http://wiki.eve-id.net/APIv2_Eve_Image_Service)
- [ ] [APIv2 Old Portraits](http://wiki.eve-id.net/APIv2_Old_Portraits)

- [x] [APIv2 Server ServerStatus XML](http://wiki.eve-id.net/APIv2_Server_ServerStatus_XML)


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

