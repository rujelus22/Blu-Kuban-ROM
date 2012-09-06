.class public Lcom/twitter/android/api/TweetMedia;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x664f78b4ed3f8064L


# instance fields
.field private transient a:Lcom/twitter/android/api/m;

.field public final authorUser:Lcom/twitter/android/api/TweetMedia$User;

.field private transient b:Lcom/twitter/android/api/m;

.field public final description:Ljava/lang/String;

.field public final imageHeight:I

.field public final imageUrl:Ljava/lang/String;

.field public final imageUrlLarge:Ljava/lang/String;

.field public final imageWidth:I

.field public final playerStreamUrl:Ljava/lang/String;

.field public final playerType:I

.field public final playerUrl:Ljava/lang/String;

.field public final siteUser:Lcom/twitter/android/api/TweetMedia$User;

.field public final title:Ljava/lang/String;

.field public final type:I

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Lcom/twitter/android/api/ac;Lcom/twitter/android/api/ac;)V
    .registers 16

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/twitter/android/api/TweetMedia;->type:I

    iput-object p2, p0, Lcom/twitter/android/api/TweetMedia;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/twitter/android/api/TweetMedia;->description:Ljava/lang/String;

    iput-object p4, p0, Lcom/twitter/android/api/TweetMedia;->url:Ljava/lang/String;

    iput-object p5, p0, Lcom/twitter/android/api/TweetMedia;->imageUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/twitter/android/api/TweetMedia;->imageUrlLarge:Ljava/lang/String;

    iput p7, p0, Lcom/twitter/android/api/TweetMedia;->imageWidth:I

    iput p8, p0, Lcom/twitter/android/api/TweetMedia;->imageHeight:I

    iput p9, p0, Lcom/twitter/android/api/TweetMedia;->playerType:I

    iput-object p10, p0, Lcom/twitter/android/api/TweetMedia;->playerUrl:Ljava/lang/String;

    iput-object p11, p0, Lcom/twitter/android/api/TweetMedia;->playerStreamUrl:Ljava/lang/String;

    if-eqz p12, :cond_2d

    new-instance v0, Lcom/twitter/android/api/TweetMedia$User;

    invoke-direct {v0, p12}, Lcom/twitter/android/api/TweetMedia$User;-><init>(Lcom/twitter/android/api/ac;)V

    iput-object v0, p0, Lcom/twitter/android/api/TweetMedia;->siteUser:Lcom/twitter/android/api/TweetMedia$User;

    :goto_23
    if-eqz p13, :cond_30

    new-instance v0, Lcom/twitter/android/api/TweetMedia$User;

    invoke-direct {v0, p13}, Lcom/twitter/android/api/TweetMedia$User;-><init>(Lcom/twitter/android/api/ac;)V

    iput-object v0, p0, Lcom/twitter/android/api/TweetMedia;->authorUser:Lcom/twitter/android/api/TweetMedia$User;

    :goto_2c
    return-void

    :cond_2d
    iput-object v1, p0, Lcom/twitter/android/api/TweetMedia;->siteUser:Lcom/twitter/android/api/TweetMedia$User;

    goto :goto_23

    :cond_30
    iput-object v1, p0, Lcom/twitter/android/api/TweetMedia;->authorUser:Lcom/twitter/android/api/TweetMedia$User;

    goto :goto_2c
.end method


# virtual methods
.method public final a(F)Lcom/twitter/android/api/m;
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/api/TweetMedia;->imageUrlLarge:Ljava/lang/String;

    if-eqz v0, :cond_22

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/twitter/android/api/TweetMedia;->b:Lcom/twitter/android/api/m;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/twitter/android/api/m;

    iget-object v1, p0, Lcom/twitter/android/api/TweetMedia;->imageUrlLarge:Ljava/lang/String;

    iget v2, p0, Lcom/twitter/android/api/TweetMedia;->imageWidth:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/twitter/android/api/TweetMedia;->imageHeight:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/api/m;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/twitter/android/api/TweetMedia;->b:Lcom/twitter/android/api/m;

    :cond_1f
    iget-object v0, p0, Lcom/twitter/android/api/TweetMedia;->b:Lcom/twitter/android/api/m;

    :goto_21
    return-object v0

    :cond_22
    iget-object v0, p0, Lcom/twitter/android/api/TweetMedia;->a:Lcom/twitter/android/api/m;

    if-nez v0, :cond_33

    new-instance v0, Lcom/twitter/android/api/m;

    iget-object v1, p0, Lcom/twitter/android/api/TweetMedia;->imageUrl:Ljava/lang/String;

    iget v2, p0, Lcom/twitter/android/api/TweetMedia;->imageWidth:I

    iget v3, p0, Lcom/twitter/android/api/TweetMedia;->imageHeight:I

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/api/m;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/twitter/android/api/TweetMedia;->a:Lcom/twitter/android/api/m;

    :cond_33
    iget-object v0, p0, Lcom/twitter/android/api/TweetMedia;->a:Lcom/twitter/android/api/m;

    goto :goto_21
.end method
