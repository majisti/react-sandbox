import React, {Component} from 'react';
import './Card.css';
import {Title} from "../Title/Title";
import {Author} from "../Author/Author";
import {Summary} from "../Summary/Summary";

export class Card extends Component {
    render() {
        const {color, title, author, summary} = this.props;

        const containerStyle = {
            backgroundColor: color
        };

        return (
            <div className='Card' style={containerStyle}>
                <Title>{title}</Title>
                <Author
                    name={author.name}
                    photo={author.photo}
                />
                <Summary>{summary}</Summary>
            </div>
        )
    }
}