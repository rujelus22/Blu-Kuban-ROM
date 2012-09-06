.class public Lcom/google/googlenav/ui/view/dialog/br;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lcom/google/googlenav/ui/view/dialog/bs;

.field private final c:Lcom/google/googlenav/ui/view/dialog/bu;


# direct methods
.method public constructor <init>(ILcom/google/googlenav/ui/view/dialog/bs;Lcom/google/googlenav/ui/view/dialog/bu;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;-><init>()V

    .line 62
    iput p1, p0, Lcom/google/googlenav/ui/view/dialog/br;->a:I

    .line 63
    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/br;->b:Lcom/google/googlenav/ui/view/dialog/bs;

    .line 64
    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/br;->c:Lcom/google/googlenav/ui/view/dialog/bu;

    .line 65
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;ILcom/google/googlenav/ui/view/dialog/bs;Lcom/google/googlenav/ui/view/dialog/bu;)Lcom/google/googlenav/ui/view/dialog/br;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f020348

    const/4 v3, 0x0

    .line 73
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/br;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/googlenav/ui/view/dialog/br;-><init>(ILcom/google/googlenav/ui/view/dialog/bs;Lcom/google/googlenav/ui/view/dialog/bu;)V

    .line 74
    const/4 v1, 0x0

    new-array v2, v3, [I

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/google/googlenav/ui/view/dialog/br;->a(ZILag/f;[I)V

    .line 75
    const v1, 0x7f100025

    invoke-virtual {v0, p0, v1, v4}, Lcom/google/googlenav/ui/view/dialog/br;->a(Ljava/lang/CharSequence;II)V

    .line 76
    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/br;)Lcom/google/googlenav/ui/view/dialog/bu;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/br;->c:Lcom/google/googlenav/ui/view/dialog/bu;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 162
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-nez v0, :cond_15

    .line 163
    const v0, 0x7f100025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :cond_15
    return-void
.end method

.method private a(Lcom/google/googlenav/ai;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 247
    if-eqz p2, :cond_9

    .line 248
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/dialog/br;->b(Lcom/google/googlenav/ai;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/br;->a(Landroid/content/Intent;)V

    .line 250
    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/br;Ljava/lang/CharSequence;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/dialog/br;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private b(Lcom/google/googlenav/ai;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 260
    const-string v0, "\n"

    .line 261
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.google.android.apps.offers.VIEW_OFFER_DETAILS"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    const/16 v0, 0x10

    invoke-static {p2, v0}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 265
    invoke-virtual {p2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_1a
    const-string v2, "offer_title"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const/4 v0, 0x1

    const-string v2, "offer_id"

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/br;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILandroid/content/Intent;Ljava/lang/String;)V

    .line 269
    const/16 v0, 0xc

    const-string v2, "offer_namespace"

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/br;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILandroid/content/Intent;Ljava/lang/String;)V

    .line 270
    const/16 v0, 0xf

    const-string v2, "offer_type"

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/br;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILandroid/content/Intent;Ljava/lang/String;)V

    .line 271
    const-string v0, "offer_title"

    invoke-virtual {p0, p2, v3, v1, v0}, Lcom/google/googlenav/ui/view/dialog/br;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILandroid/content/Intent;Ljava/lang/String;)V

    .line 272
    const/16 v0, 0xa

    const-string v2, "offer_image_url"

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/br;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILandroid/content/Intent;Ljava/lang/String;)V

    .line 274
    const/16 v0, 0xb

    const-string v2, "offer_description"

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/br;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILandroid/content/Intent;Ljava/lang/String;)V

    .line 276
    const-string v0, "offer_cluster_doc_id"

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v0, "offer_merchant_name"

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v0, "offer_website"

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->az()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v0, "offer_address"

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Lcom/google/googlenav/ai;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v0, "offer_phone_number"

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    return-object v1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/br;)V
    .registers 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/br;->o()V

    return-void
.end method

.method private b(Landroid/content/Intent;)Z
    .registers 5
    .parameter

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/br;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 212
    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 215
    const-class v2, Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 216
    const/4 v0, 0x1

    .line 219
    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method private o()V
    .registers 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/br;->l()Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->r()Z

    move-result v0

    if-nez v0, :cond_11

    .line 104
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/br;->c:Lcom/google/googlenav/ui/view/dialog/bu;

    invoke-interface {v0, p0}, Lcom/google/googlenav/ui/view/dialog/bu;->a(Lcom/google/googlenav/ui/view/dialog/br;)V

    .line 106
    :cond_11
    return-void
.end method

.method private v()V
    .registers 3

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/br;->l()Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    move-result-object v0

    .line 152
    invoke-static {}, Lcom/google/googlenav/offers/k;->g()Lcom/google/android/apps/common/offerslib/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/a;)V

    .line 153
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/bt;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/bt;-><init>(Lcom/google/googlenav/ui/view/dialog/br;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/d;)V

    .line 154
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/br;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/offers/k;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_20

    .line 156
    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Landroid/accounts/Account;)V

    .line 158
    :cond_20
    return-void
.end method


# virtual methods
.method protected K_()V
    .registers 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/br;->m()Landroid/support/v4/app/k;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/br;->l()Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_14

    .line 113
    invoke-virtual {v0}, Landroid/support/v4/app/k;->a()Landroid/support/v4/app/t;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v1}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/f;)Landroid/support/v4/app/t;

    .line 115
    invoke-virtual {v0}, Landroid/support/v4/app/t;->b()I

    .line 118
    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/br;->b:Lcom/google/googlenav/ui/view/dialog/bs;

    invoke-interface {v0, p0}, Lcom/google/googlenav/ui/view/dialog/bs;->a(Lcom/google/googlenav/ui/view/dialog/br;)V

    .line 119
    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/V;->K_()V

    .line 120
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/br;->l()Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->b(Landroid/content/Intent;)V

    .line 88
    return-void
.end method

.method public a(Lcom/google/googlenav/ai;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 235
    if-eqz p1, :cond_b

    if-ltz p2, :cond_b

    .line 236
    invoke-virtual {p1, p2}, Lcom/google/googlenav/ai;->k(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/dialog/br;->a(Lcom/google/googlenav/ai;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 238
    :cond_b
    return-void
.end method

.method protected a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILandroid/content/Intent;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    invoke-virtual {p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 287
    invoke-virtual {p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    :cond_d
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/br;->dismiss()V

    .line 198
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/br;->c:Lcom/google/googlenav/ui/view/dialog/bu;

    invoke-interface {v0, p0}, Lcom/google/googlenav/ui/view/dialog/bu;->c(Lcom/google/googlenav/ui/view/dialog/br;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 204
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/br;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->getMapsActivity(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;ZI)V

    .line 208
    :cond_20
    return-void
.end method

.method public a(Landroid/net/Uri;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 182
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 183
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/dialog/br;->b(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 184
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/br;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/maps/MapsActivity;->getMapsActivity(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v2

    .line 186
    new-instance v3, Lcom/google/googlenav/android/M;

    new-instance v4, Lcom/google/googlenav/offers/OfferDetailsIntentProcessorHandler;

    invoke-direct {v4, p0, v2, v1}, Lcom/google/googlenav/offers/OfferDetailsIntentProcessorHandler;-><init>(Lcom/google/googlenav/ui/view/dialog/br;Lcom/google/googlenav/android/P;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/android/i;->h()Lat/u;

    move-result-object v2

    invoke-direct {v3, v4, v1, v2}, Lcom/google/googlenav/android/M;-><init>(Lcom/google/googlenav/android/P;Lcom/google/googlenav/ui/v;Lat/u;)V

    .line 190
    invoke-virtual {v3}, Lcom/google/googlenav/android/M;->a()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_38

    const/4 v0, 0x1

    .line 192
    :cond_38
    return v0
.end method

.method protected c()Landroid/view/View;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 133
    .line 134
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 137
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/br;->i:Landroid/view/View;

    .line 139
    :goto_d
    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/br;->l()Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    move-result-object v2

    if-nez v2, :cond_27

    .line 143
    :cond_15
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/br;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/br;->i()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 144
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/br;->v()V

    .line 145
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/br;->a(Landroid/view/View;)V

    .line 147
    :cond_27
    return-object v0

    :cond_28
    move-object v0, v1

    goto :goto_d
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method protected i()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/br;->a:I

    return v0
.end method

.method protected j()Z
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/br;->c:Lcom/google/googlenav/ui/view/dialog/bu;

    invoke-interface {v0, p0}, Lcom/google/googlenav/ui/view/dialog/bu;->b(Lcom/google/googlenav/ui/view/dialog/br;)Z

    move-result v0

    return v0
.end method

.method public l()Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;
    .registers 3

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/br;->m()Landroid/support/v4/app/k;

    move-result-object v0

    .line 170
    const v1, 0x7f10030c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->a(I)Landroid/support/v4/app/f;

    move-result-object v0

    .line 171
    check-cast v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    return-object v0
.end method

.method public m()Landroid/support/v4/app/k;
    .registers 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/br;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 178
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/k;

    move-result-object v0

    return-object v0
.end method

.method public n()V
    .registers 3

    .prologue
    .line 223
    const/16 v0, 0x58

    const-string v1, "m"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.offers.VIEW_MY_OFFERS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/br;->a(Landroid/content/Intent;)V

    .line 226
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/br;->o()V

    .line 93
    return-void
.end method
