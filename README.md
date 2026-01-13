Bannerlord: Quick renaming

Very basic effort for me to keep some working code on renaming. You can take the xslt files, stick them in your ModuleData folder, and ensure that SubModule.xml reads them (example code below).
Currently working on testing out other attributes as well; aim is to create some lightweight code beginners can copy and paste to play around with factions. 


    </SubModules>
    <Xmls>
		<XmlNode>
      <XmlName id="NPCCharacters" path="Lords"/>
      <IncludedGameTypes>
        <GameType value="Campaign"/>
        <GameType value="CampaignStoryMode"/>
      </IncludedGameTypes>
    </XmlNode>
		<XmlNode>
			<XmlName id="Settlements" path="settlements"/>
			<IncludedGameTypes>
				<GameType value="Campaign"/>
				<GameType value="CampaignStoryMode"/>
			</IncludedGameTypes>
		</XmlNode>
   </Xmls>
