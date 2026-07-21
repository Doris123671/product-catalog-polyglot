use('shop');

const pipeline = [
  { $unwind: '$ratings' },
  {
    $group: {
      _id: '$category',
      averageRating: { $avg: '$ratings' },
      ratingCount: { $sum: 1 }
    }
  },
  {
    $sort: { averageRating: -1 }
  }
];

const results = db.products.aggregate(pipeline).toArray();
printjson(results);
