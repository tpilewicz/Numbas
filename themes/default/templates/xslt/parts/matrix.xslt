{% raw %}
<xsl:template match="part[@type='matrix']" mode="typespecific">
    <xsl:if test="count(steps/part)>0"><localise>part.with steps answer prompt</localise></xsl:if>
    <span><matrix-input params="rows: studentAnswerRows, columns: studentAnswerColumns, value: studentAnswer, allowResize: allowResize, disable: revealed, events: inputEvents"></matrix-input></span>
    <span class="feedback-icon" data-bind="css: scoreFeedback.iconClass, attr: scoreFeedback.iconAttr"></span>
</xsl:template>
<xsl:template match="part[@type='matrix']" mode="correctanswer">
    <span class="correct-answer" data-bind="visibleIf: showCorrectAnswer, typeset: showCorrectAnswer">
        <localise>part.correct answer</localise>
        <span><matrix-input params="rows: correctAnswerRows, columns: correctAnswerColumns, value: correctAnswer, allowResize: false, disable: true"></matrix-input></span>
    </span>
</xsl:template>
{% endraw %}
