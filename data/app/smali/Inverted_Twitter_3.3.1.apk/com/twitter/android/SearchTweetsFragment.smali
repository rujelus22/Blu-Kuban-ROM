.class public Lcom/twitter/android/SearchTweetsFragment;
.super Lcom/twitter/android/TweetListFragment;

# interfaces
.implements Landroid/location/LocationListener;
.implements Lcom/twitter/android/ff;
.implements Lcom/twitter/android/widget/an;


# static fields
.field static final l:Ljava/util/HashMap;


# instance fields
.field private D:Z

.field private E:Z

.field private F:Landroid/location/Location;

.field private G:Lcom/twitter/android/api/u;

.field m:I

.field n:I

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Landroid/widget/ImageView;

.field r:Ljava/lang/String;

.field s:I

.field t:Lcom/twitter/android/cl;

.field u:Lcom/twitter/android/widget/t;

.field v:Ljava/util/ArrayList;

.field w:Lcom/twitter/android/api/TwitterStory;

.field x:Lcom/twitter/android/api/y;

.field y:Ljava/lang/String;

.field z:[Landroid/widget/BaseAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0xc

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/twitter/android/SearchTweetsFragment;->l:Ljava/util/HashMap;

    const-string v1, "from_people_search"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/SearchTweetsFragment;->l:Ljava/util/HashMap;

    const-string v1, "from_tweet_search"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/SearchTweetsFragment;->l:Ljava/util/HashMap;

    const-string v1, "hashtag"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/SearchTweetsFragment;->l:Ljava/util/HashMap;

    const-string v1, "image_topic_story"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/SearchTweetsFragment;->l:Ljava/util/HashMap;

    const-string v1, "news_story"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/SearchTweetsFragment;->l:Ljava/util/HashMap;

    const-string v1, "protocol_search"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/SearchTweetsFragment;->l:Ljava/util/HashMap;

    const-string v1, "related_search"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/SearchTweetsFragment;->l:Ljava/util/HashMap;

    const-string v1, "saved_search"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/SearchTweetsFragment;->l:Ljava/util/HashMap;

    const-string v1, "search_box"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/SearchTweetsFragment;->l:Ljava/util/HashMap;

    const-string v1, "spelling_correction"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/SearchTweetsFragment;->l:Ljava/util/HashMap;

    const-string v1, "trend"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/SearchTweetsFragment;->l:Ljava/util/HashMap;

    const-string v1, "typeahead"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/SearchTweetsFragment;->l:Ljava/util/HashMap;

    const-string v1, "recent"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/twitter/android/TweetListFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/SearchTweetsFragment;->s:I

    return-void
.end method

.method private a(Landroid/location/Location;Lcom/twitter/android/api/u;)V
    .registers 9

    const/16 v5, 0x2c

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const v3, 0x7f0c000d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v2, v0}, Lcom/twitter/android/util/j;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_31
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->q:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/twitter/android/client/b;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_44
    return-void

    :cond_45
    if-eqz p2, :cond_44

    iget-object v0, p2, Lcom/twitter/android/api/u;->b:Ljava/lang/String;

    const-string v2, "UTF8"

    invoke-static {v0, v2}, Lcom/twitter/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/twitter/android/api/u;->c:Ljava/lang/String;

    if-eqz v0, :cond_31

    const-string v0, "&path=color:0x00000000%7Cfillcolor:0xAA000033"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/twitter/android/api/u;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/android/api/r;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    const-string v3, "%7C"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_67
.end method

.method private i(I)J
    .registers 7

    const-wide/16 v0, 0x0

    packed-switch p1, :pswitch_data_48

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid fetch type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1a
    iget-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3f

    :cond_28
    const/16 v3, 0x14

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_40

    const/16 v3, 0x1f

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_40

    const/16 v0, 0x17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :cond_3f
    :goto_3f
    :pswitch_3f
    return-wide v0

    :cond_40
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_3f

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_1a
        :pswitch_3f
    .end packed-switch
.end method

.method private j(I)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->t:Lcom/twitter/android/cl;

    invoke-virtual {v0, p1}, Lcom/twitter/android/cl;->a(I)V

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->t:Lcom/twitter/android/cl;

    invoke-virtual {v0}, Lcom/twitter/android/cl;->b()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/SearchTweetsFragment;->s:I

    return-void
.end method

.method private l()V
    .registers 3

    iget-boolean v0, p0, Lcom/twitter/android/SearchTweetsFragment;->E:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/SearchTweetsFragment;->E:Z

    :cond_16
    return-void
.end method

.method private m()V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->q:Landroid/widget/ImageView;

    if-nez v0, :cond_1f

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->i:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03002b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->q:Landroid/widget/ImageView;

    :cond_1f
    return-void
.end method


# virtual methods
.method public final a(J)I
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/twitter/android/TweetListFragment;->a(J)I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->u:Lcom/twitter/android/widget/t;

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->z:[Landroid/widget/BaseAdapter;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/t;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a()V
    .registers 2

    const-string v0, "from_people_search"

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->o:Ljava/lang/String;

    return-void
.end method

.method protected final a(Landroid/database/Cursor;)V
    .registers 4

    iget-boolean v0, p0, Lcom/twitter/android/SearchTweetsFragment;->b:Z

    if-eqz v0, :cond_18

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_18

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_18

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsFragment;->g(I)V

    :cond_18
    return-void
.end method

.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/twitter/android/TweetListFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsFragment;->c(I)V

    return-void
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 15

    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->u:Lcom/twitter/android/widget/t;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->q:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->F:Landroid/location/Location;

    if-eqz v0, :cond_6b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "geo:0,0?z=18&q="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->F:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->F:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->G:Lcom/twitter/android/api/u;

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->G:Lcom/twitter/android/api/u;

    iget-object v1, v1, Lcom/twitter/android/api/u;->b:Ljava/lang/String;

    if-eqz v1, :cond_53

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->G:Lcom/twitter/android/api/u;

    iget-object v2, v2, Lcom/twitter/android/api/u;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_5b
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_65
    invoke-virtual {p0, v1}, Lcom/twitter/android/SearchTweetsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_68
    .catch Landroid/content/ActivityNotFoundException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_8

    :catch_69
    move-exception v0

    goto :goto_8

    :cond_6b
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->G:Lcom/twitter/android/api/u;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "geo:0,0?q="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->G:Lcom/twitter/android/api/u;

    iget-object v1, v1, Lcom/twitter/android/api/u;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_5b

    :cond_8b
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->u:Lcom/twitter/android/widget/t;

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->i:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/t;->a(I)I

    move-result v0

    packed-switch v0, :pswitch_data_23e

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/TwitterStory;

    if-eqz v1, :cond_b9

    sget-object v1, Lcom/twitter/android/SearchTweetsFragment;->l:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_244

    :cond_b9
    :goto_b9
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "tw"

    new-instance v3, Lcom/twitter/android/provider/m;

    invoke-direct {v3, v0}, Lcom/twitter/android/provider/m;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    :pswitch_d4
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_24c

    goto/16 :goto_8

    :sswitch_dd
    invoke-virtual {p0, v6}, Lcom/twitter/android/SearchTweetsFragment;->f(I)V

    goto/16 :goto_8

    :sswitch_e2
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->x:Lcom/twitter/android/api/y;

    iget-object v0, v0, Lcom/twitter/android/api/y;->a:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/SearchTweetsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "query"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "context"

    const-string v2, "spelling_correction"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    :sswitch_10a
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->m:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    check-cast p2, Lcom/twitter/android/widget/StoryView;

    iget-object v0, p2, Lcom/twitter/android/widget/StoryView;->j:Lcom/twitter/android/api/TwitterStory;

    iget-object v0, v0, Lcom/twitter/android/api/TwitterStory;->data:Lcom/twitter/android/api/TwitterStory$Data;

    iget-wide v0, v0, Lcom/twitter/android/api/TwitterStory$Data;->statusId:J

    cmp-long v2, v0, v7

    if-lez v2, :cond_8

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/twitter/android/TweetActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v3}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lcom/twitter/android/provider/o;->a(JJ)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    :sswitch_141
    check-cast p2, Lcom/twitter/android/widget/StoryView;

    sget-object v0, Lcom/twitter/android/SearchTweetsFragment;->l:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_266

    new-instance v0, Lcom/twitter/android/service/ScribeLog;

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->n:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    iget-object v1, p2, Lcom/twitter/android/widget/StoryView;->o:Ljava/lang/String;

    iput-object v1, v0, Lcom/twitter/android/service/ScribeLog;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/service/ScribeLog;)V

    :goto_16a
    iget-object v0, p2, Lcom/twitter/android/widget/StoryView;->o:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/android/util/x;->b(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_8

    :pswitch_17b
    new-instance v0, Lcom/twitter/android/service/ScribeLog;

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->p:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    iget-object v1, p2, Lcom/twitter/android/widget/StoryView;->o:Ljava/lang/String;

    iput-object v1, v0, Lcom/twitter/android/service/ScribeLog;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/service/ScribeLog;)V

    goto :goto_16a

    :sswitch_192
    check-cast p2, Lcom/twitter/android/widget/StoryView;

    iget-object v0, p2, Lcom/twitter/android/widget/StoryView;->o:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/android/util/x;->b(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v1, Lcom/twitter/android/service/ScribeLog;

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->o:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    iput-object v0, v1, Lcom/twitter/android/service/ScribeLog;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->y:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1cb

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->y:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/android/service/ScribeLog;->query:Ljava/lang/String;

    :goto_1c4
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/service/ScribeLog;)V

    goto/16 :goto_8

    :cond_1cb
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->y:Ljava/lang/String;

    iput-object v0, v1, Lcom/twitter/android/service/ScribeLog;->query:Ljava/lang/String;

    goto :goto_1c4

    :sswitch_1d0
    check-cast p2, Lcom/twitter/android/widget/StoryView;

    iget-wide v0, p2, Lcom/twitter/android/widget/StoryView;->p:J

    cmp-long v2, v0, v7

    if-lez v2, :cond_8

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "user_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "friendship"

    iget v2, p0, Lcom/twitter/android/SearchTweetsFragment;->s:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/twitter/android/SearchTweetsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_8

    :pswitch_1f6
    new-instance v1, Lcom/twitter/android/service/ScribeLog;

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->q:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    const-string v2, "image_topic_story"

    iput-object v2, v1, Lcom/twitter/android/service/ScribeLog;->context:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2, v1}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/service/ScribeLog;)V

    goto/16 :goto_b9

    :pswitch_20e
    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/TwitterStory;

    invoke-virtual {v1}, Lcom/twitter/android/api/TwitterStory;->a()Z

    move-result v1

    if-eqz v1, :cond_225

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->r:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto/16 :goto_b9

    :cond_225
    new-instance v1, Lcom/twitter/android/service/ScribeLog;

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->q:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    const-string v2, "news_story"

    iput-object v2, v1, Lcom/twitter/android/service/ScribeLog;->context:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2, v1}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/service/ScribeLog;)V

    goto/16 :goto_b9

    nop

    :pswitch_data_23e
    .packed-switch 0x0
        :pswitch_d4
    .end packed-switch

    :pswitch_data_244
    .packed-switch 0x4
        :pswitch_1f6
        :pswitch_20e
    .end packed-switch

    :sswitch_data_24c
    .sparse-switch
        0x7f070084 -> :sswitch_dd
        0x7f070095 -> :sswitch_e2
        0x7f0700aa -> :sswitch_192
        0x7f0700ab -> :sswitch_141
        0x7f0700ae -> :sswitch_10a
        0x7f0700af -> :sswitch_1d0
    .end sparse-switch

    :pswitch_data_266
    .packed-switch 0x5
        :pswitch_17b
    .end packed-switch
.end method

.method final a(Lcom/twitter/android/api/TwitterStory;Lcom/twitter/android/api/y;Ljava/util/ArrayList;)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->t:Lcom/twitter/android/cl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/android/cl;->a(Lcom/twitter/android/api/TwitterStory;Lcom/twitter/android/api/y;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->t:Lcom/twitter/android/cl;

    invoke-virtual {v0}, Lcom/twitter/android/cl;->b()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/SearchTweetsFragment;->s:I

    return-void
.end method

.method public final a(Lcom/twitter/android/widget/UserView;J)V
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/twitter/android/widget/UserView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0, p2, p3, v2}, Lcom/twitter/android/client/b;->b(JLjava/lang/String;)Ljava/lang/String;

    :goto_c
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->t:Lcom/twitter/android/cl;

    invoke-virtual {v0}, Lcom/twitter/android/cl;->b()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/SearchTweetsFragment;->s:I

    return-void

    :cond_15
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/twitter/android/client/b;->a(JZLjava/lang/String;)Ljava/lang/String;

    goto :goto_c
.end method

.method final a(Ljava/util/ArrayList;I)V
    .registers 7

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/SearchTweetsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "query"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "context"

    const-string v2, "related_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected final a_()V
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsFragment;->g(I)V

    return-void
.end method

.method protected final b_()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lcom/twitter/android/gc;

    invoke-virtual {v0}, Lcom/twitter/android/gc;->a()V

    :cond_b
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->t:Lcom/twitter/android/cl;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->t:Lcom/twitter/android/cl;

    invoke-virtual {v0}, Lcom/twitter/android/cl;->a()V

    :cond_14
    return-void
.end method

.method protected final c()I
    .registers 2

    const/16 v0, 0x17

    return v0
.end method

.method protected final e(I)Landroid/app/Dialog;
    .registers 8

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_3a

    :goto_4
    move-object v0, v1

    :goto_5
    return-object v0

    :pswitch_6
    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_35

    new-instance v4, Lcom/twitter/android/en;

    invoke-direct {v4, p0, v2}, Lcom/twitter/android/en;-><init>(Lcom/twitter/android/SearchTweetsFragment;Ljava/util/ArrayList;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v0, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b00d5

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_5

    :cond_35
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/twitter/android/SearchTweetsFragment;->a(Ljava/util/ArrayList;I)V

    goto :goto_4

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public final e()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/SearchTweetsFragment;->D:Z

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->t:Lcom/twitter/android/cl;

    invoke-virtual {v0}, Lcom/twitter/android/cl;->getCount()I

    move-result v0

    if-lez v0, :cond_12

    invoke-virtual {p0, v1, v1, v1}, Lcom/twitter/android/SearchTweetsFragment;->a(Lcom/twitter/android/api/TwitterStory;Lcom/twitter/android/api/y;Ljava/util/ArrayList;)V

    :cond_12
    return-void
.end method

.method public final f()Lcom/twitter/android/widget/f;
    .registers 8

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/twitter/android/SearchTweetsFragment;->i:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->u:Lcom/twitter/android/widget/t;

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->z:[Landroid/widget/BaseAdapter;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/t;->b(I)I

    move-result v0

    :goto_1e
    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int v3, v2, v0

    iget-boolean v2, p0, Lcom/twitter/android/SearchTweetsFragment;->a:Z

    if-eqz v2, :cond_2a

    add-int/lit8 v3, v3, 0x1

    :cond_2a
    if-ge v4, v3, :cond_78

    move v2, v3

    :goto_2d
    iget-object v6, p0, Lcom/twitter/android/SearchTweetsFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v6}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    sub-int v0, v2, v0

    if-eqz v6, :cond_4b

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    :cond_3d
    const/16 v0, 0x1f

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    add-int v2, v3, v0

    :cond_4b
    :goto_4b
    sub-int v0, v2, v4

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/twitter/android/widget/f;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_5d
    invoke-direct {v3, v2, v4, v5, v1}, Lcom/twitter/android/widget/f;-><init>(IJI)V

    return-object v3

    :cond_61
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->t:Lcom/twitter/android/cl;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->t:Lcom/twitter/android/cl;

    invoke-virtual {v0}, Lcom/twitter/android/cl;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->t:Lcom/twitter/android/cl;

    invoke-virtual {v0}, Lcom/twitter/android/cl;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_76
    move v0, v1

    goto :goto_1e

    :cond_78
    move v2, v4

    goto :goto_2d

    :cond_7a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_4b
.end method

.method final g(I)V
    .registers 20

    invoke-virtual/range {p0 .. p1}, Lcom/twitter/android/SearchTweetsFragment;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/twitter/android/SearchTweetsFragment;->E:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/SearchTweetsFragment;->F:Landroid/location/Location;

    if-eqz v2, :cond_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/SearchTweetsFragment;->G:Lcom/twitter/android/api/u;

    if-nez v2, :cond_6d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/SearchTweetsFragment;->F:Landroid/location/Location;

    if-eqz v2, :cond_6d

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/SearchTweetsFragment;->F:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/SearchTweetsFragment;->F:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "5mi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_4f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/SearchTweetsFragment;->y:Ljava/lang/String;

    packed-switch p1, :pswitch_data_f8

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid fetch type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6d
    const/4 v11, 0x0

    goto :goto_4f

    :pswitch_6f
    const/4 v13, 0x1

    :goto_70
    invoke-virtual/range {p0 .. p1}, Lcom/twitter/android/SearchTweetsFragment;->b(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/SearchTweetsFragment;->i(I)J

    move-result-wide v5

    const/16 v7, 0x64

    packed-switch p1, :pswitch_data_102

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid fetch type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v4}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v4

    sget-object v6, Lcom/twitter/android/service/ScribeEvent;->k:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v2, v4, v5, v6}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    const/4 v13, 0x0

    goto :goto_70

    :pswitch_aa
    move-object/from16 v0, p0

    iget v13, v0, Lcom/twitter/android/SearchTweetsFragment;->m:I

    goto :goto_70

    :pswitch_af
    const-wide/16 v8, 0x0

    :goto_b1
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/twitter/android/SearchTweetsFragment;->p:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/android/SearchTweetsFragment;->n:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/TwitterStory;

    if-nez v4, :cond_f4

    const/16 v17, 0x1

    :goto_c6
    move-object v4, v3

    invoke-virtual/range {v2 .. v17}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;Ljava/lang/String;JIJZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/twitter/android/SearchTweetsFragment;->a(Ljava/lang/String;I)V

    goto/16 :goto_6

    :pswitch_d4
    const-wide/16 v8, 0x0

    goto :goto_b1

    :pswitch_d7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/SearchTweetsFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v4}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_f1

    invoke-interface {v4}, Landroid/database/Cursor;->moveToLast()Z

    move-result v8

    if-eqz v8, :cond_ee

    const/16 v8, 0x17

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    goto :goto_b1

    :cond_ee
    const-wide/16 v8, 0x0

    goto :goto_b1

    :cond_f1
    const-wide/16 v8, 0x0

    goto :goto_b1

    :cond_f4
    const/16 v17, 0x0

    goto :goto_c6

    nop

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_aa
        :pswitch_97
        :pswitch_6f
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_d7
        :pswitch_d4
        :pswitch_af
    .end packed-switch
.end method

.method protected final h(I)Lcom/twitter/android/provider/m;
    .registers 4

    new-instance v1, Lcom/twitter/android/provider/m;

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->i:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-direct {v1, v0}, Lcom/twitter/android/provider/m;-><init>(Landroid/database/Cursor;)V

    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 13

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v0, "query"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, p0, Lcom/twitter/android/SearchTweetsFragment;->E:Z

    if-eqz v0, :cond_b0

    const-string v0, "location"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-static {v0, p0}, Lcom/twitter/android/platform/h;->a(Landroid/location/LocationManager;Landroid/location/LocationListener;)Z

    invoke-direct {p0}, Lcom/twitter/android/SearchTweetsFragment;->m()V

    move-object v0, v3

    :cond_24
    :goto_24
    const-string v2, "context"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->o:Ljava/lang/String;

    if-nez v2, :cond_34

    const-string v2, "search_box"

    iput-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->o:Ljava/lang/String;

    :cond_34
    if-nez v0, :cond_38

    const-string v0, ""

    :cond_38
    iput-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->u:Lcom/twitter/android/widget/t;

    if-nez v0, :cond_90

    iget-object v5, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    new-instance v4, Lcom/twitter/android/bi;

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->g:Lcom/twitter/android/be;

    invoke-direct {v4, v5, v0}, Lcom/twitter/android/bi;-><init>(Lcom/twitter/android/client/b;Lcom/twitter/android/be;)V

    new-instance v0, Lcom/twitter/android/gc;

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/gc;-><init>(Landroid/content/Context;IZLcom/twitter/android/widget/am;Lcom/twitter/android/client/b;Lcom/twitter/android/widget/ai;)V

    invoke-virtual {v0, p0}, Lcom/twitter/android/gc;->a(Lcom/twitter/android/cj;)V

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    new-instance v3, Lcom/twitter/android/cl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    const-string v0, "show_headline"

    const/4 v2, 0x1

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v5}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->d()Z

    move-result v8

    move-object v4, v1

    move-object v9, p0

    invoke-direct/range {v3 .. v9}, Lcom/twitter/android/cl;-><init>(Landroid/content/Context;Lcom/twitter/android/client/b;IZZLcom/twitter/android/widget/an;)V

    iput-object v3, p0, Lcom/twitter/android/SearchTweetsFragment;->t:Lcom/twitter/android/cl;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/BaseAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->t:Lcom/twitter/android/cl;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->z:[Landroid/widget/BaseAdapter;

    new-instance v0, Lcom/twitter/android/widget/t;

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->z:[Landroid/widget/BaseAdapter;

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/t;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->u:Lcom/twitter/android/widget/t;

    :cond_90
    iget-boolean v0, p0, Lcom/twitter/android/SearchTweetsFragment;->D:Z

    if-nez v0, :cond_145

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/TwitterStory;

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->x:Lcom/twitter/android/api/y;

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/SearchTweetsFragment;->a(Lcom/twitter/android/api/TwitterStory;Lcom/twitter/android/api/y;Ljava/util/ArrayList;)V

    :goto_9d
    if-eqz p1, :cond_a8

    const-string v0, "state_friendship"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/twitter/android/SearchTweetsFragment;->j(I)V

    :cond_a8
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->u:Lcom/twitter/android/widget/t;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_b0
    const-string v0, "data"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "place"

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_fb

    const-string v0, "place"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/u;

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->G:Lcom/twitter/android/api/u;

    const-string v2, "loc"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    iget-object v4, v0, Lcom/twitter/android/api/u;->d:Ljava/lang/String;

    if-eqz v4, :cond_14f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "place:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/twitter/android/api/u;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v10, v0

    move-object v0, v3

    move-object v3, v2

    move-object v2, v10

    :goto_ed
    if-nez v2, :cond_f1

    if-eqz v3, :cond_24

    :cond_f1
    iput-object v3, p0, Lcom/twitter/android/SearchTweetsFragment;->F:Landroid/location/Location;

    invoke-direct {p0}, Lcom/twitter/android/SearchTweetsFragment;->m()V

    invoke-direct {p0, v3, v2}, Lcom/twitter/android/SearchTweetsFragment;->a(Landroid/location/Location;Lcom/twitter/android/api/u;)V

    goto/16 :goto_24

    :cond_fb
    if-eqz v0, :cond_138

    const-string v5, "latitude"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "longitude"

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_14d

    if-eqz v6, :cond_14d

    new-instance v2, Landroid/location/Location;

    const-string v8, "gps"

    invoke-direct {v2, v8}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/location/Location;->setLongitude(D)V

    const-string v5, "location"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->p:Ljava/lang/String;

    move-object v0, v2

    :goto_133
    move-object v2, v4

    move-object v10, v0

    move-object v0, v3

    move-object v3, v10

    goto :goto_ed

    :cond_138
    const-string v0, "loc"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    move-object v2, v4

    move-object v10, v0

    move-object v0, v3

    move-object v3, v10

    goto :goto_ed

    :cond_145
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/SearchTweetsFragment;->a(Lcom/twitter/android/api/TwitterStory;Lcom/twitter/android/api/y;Ljava/util/ArrayList;)V

    goto/16 :goto_9d

    :cond_14d
    move-object v0, v2

    goto :goto_133

    :cond_14f
    move-object v10, v0

    move-object v0, v3

    move-object v3, v2

    move-object v2, v10

    goto :goto_ed
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const-wide/16 v2, 0x0

    packed-switch p1, :pswitch_data_28

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    const/4 v0, -0x1

    if-ne v0, p2, :cond_5

    if-eqz p3, :cond_5

    const-string v0, "user_id"

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    const-string v0, "friendship"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "friendship"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/twitter/android/SearchTweetsFragment;->j(I)V

    goto :goto_5

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_f

    const-string v0, "state_search_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->r:Ljava/lang/String;

    :cond_f
    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/eo;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/eo;-><init>(Lcom/twitter/android/SearchTweetsFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->d:Lcom/twitter/android/client/g;

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/SearchTweetsFragment;->n:I

    const-string v1, "nearby"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/SearchTweetsFragment;->E:Z

    if-eqz p1, :cond_7b

    const-string v0, "state_new_data"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/SearchTweetsFragment;->D:Z

    const-string v0, "state_story"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TwitterStory;

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/TwitterStory;

    const-string v0, "state_related_queries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->v:Ljava/util/ArrayList;

    const-string v0, "state_spelling_correction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/y;

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->x:Lcom/twitter/android/api/y;

    :goto_54
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/TwitterStory;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/TwitterStory;

    invoke-virtual {v0}, Lcom/twitter/android/api/TwitterStory;->a()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/TwitterStory;

    iget v0, v0, Lcom/twitter/android/api/TwitterStory;->type:I

    if-ne v0, v4, :cond_73

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->aE:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    :cond_73
    invoke-virtual {p0, v4, p0}, Lcom/twitter/android/SearchTweetsFragment;->a(ILcom/twitter/android/util/w;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/SearchTweetsFragment;->a(ILcom/twitter/android/util/w;)V

    return-void

    :cond_7b
    const-string v1, "story"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TwitterStory;

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/TwitterStory;

    iput-boolean v2, p0, Lcom/twitter/android/SearchTweetsFragment;->D:Z

    goto :goto_54
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 11

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/TwitterStory;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/TwitterStory;

    invoke-virtual {v0}, Lcom/twitter/android/api/TwitterStory;->a()Z

    move-result v0

    if-eqz v0, :cond_41

    new-instance v0, Lcom/twitter/android/u;

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/z;->p:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/twitter/android/SearchTweetsFragment;->h:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v3}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/twitter/android/provider/o;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/provider/m;->b:[Ljava/lang/String;

    const-string v4, "tag=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/TwitterStory;

    iget v7, v7, Lcom/twitter/android/api/TwitterStory;->identifier:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "tag DESC, updated_at DESC, created DESC"

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/u;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_40
    return-object v0

    :cond_41
    new-instance v0, Lcom/twitter/android/u;

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/z;->o:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/twitter/android/SearchTweetsFragment;->h:J

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v3}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lcom/twitter/android/provider/o;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/provider/m;->b:[Ljava/lang/String;

    const-string v6, "tag DESC, updated_at DESC, created DESC"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/u;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/twitter/android/SearchTweetsFragment;->l()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/SearchTweetsFragment;->b(ILcom/twitter/android/util/w;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/SearchTweetsFragment;->b(ILcom/twitter/android/util/w;)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/SearchTweetsFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->F:Landroid/location/Location;

    if-nez v1, :cond_2c

    iput-object p1, p0, Lcom/twitter/android/SearchTweetsFragment;->F:Landroid/location/Location;

    invoke-direct {p0}, Lcom/twitter/android/SearchTweetsFragment;->l()V

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    :goto_18
    invoke-direct {p0, p1, v0}, Lcom/twitter/android/SearchTweetsFragment;->a(Landroid/location/Location;Lcom/twitter/android/api/u;)V

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/b;->a(DDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsFragment;->a(Ljava/lang/String;)V

    :cond_2c
    return-void

    :cond_2d
    move-object v5, v0

    goto :goto_18
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/TwitterStory;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/TwitterStory;

    invoke-virtual {v0}, Lcom/twitter/android/api/TwitterStory;->a()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_f
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->r:Ljava/lang/String;

    if-eqz v0, :cond_17

    :cond_13
    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->g()V

    :goto_16
    return-void

    :cond_17
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsFragment;->g(I)V

    goto :goto_16
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "state_search_id"

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "state_story"

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/TwitterStory;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "state_spelling_correction"

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->x:Lcom/twitter/android/api/y;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "state_related_queries"

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "state_friendship"

    iget v1, p0, Lcom/twitter/android/SearchTweetsFragment;->s:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "state_new_data"

    iget-boolean v1, p0, Lcom/twitter/android/SearchTweetsFragment;->D:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
