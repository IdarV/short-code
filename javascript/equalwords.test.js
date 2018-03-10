describe('equalwords', () => {
  const expected = [
    "canters, scanter, nectars",
    "case",
    "decimal, claimed, medical",
    "alerted, treadle, related",
    "calendar",
    "chill",
    "dealing, aligned",
    "allergy, gallery",
    "gravy",
    "general, enlarge, gleaner",
    "created, reacted",
    "mitered, merited",
    "topical, capitol",
    "dormant",
    "hardest, trashed, threads",
    "instead, detains, sainted, stained",
    "rerun",
    "earnest, eastern, nearest",
    "retards, darters, starred",
    "blaze",
    "landscape",
    "gymnastic",
    "exhibit",
    "iron",
    ""
  ];

  it('equalwords provides the expected output', () => {
    const output = [];
    console.log = text => output.push(text);

    require('./equalwords');
    expect(output).toEqual(expected);
  });

  it('equalwords_short provides the expected output', () => {
    const output = [];
    console.log = text => output.push(text);

    require('./equalwords_short');
    expect(output).toEqual(expected);
  });
});