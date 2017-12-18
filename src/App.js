import React, { Component } from 'react';
import {Card} from "./components/Card/Card";
import {data} from './data'
import {Grid} from "./components/Grid/Grid";

class App extends Component {
  render() {
      const cards = this.renderCards(data);

    return (
      <Grid>
          {cards}
      </Grid>
    );
  }

  renderCards(cardsData) {
      const cards = [];

      for (const cardId in cardsData) {
          if (cardsData.hasOwnProperty(cardId)) {
              const cardData = cardsData[cardId];
              cards.push(<Card key={cardData.id} {...cardData}/>)
          }
      }

      return cards;
  }
}

export default App;
