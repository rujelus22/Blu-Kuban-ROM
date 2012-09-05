.class Lcom/sprint/w/installer/PackDetails$NonClickableItem;
.super Lcom/sprint/w/installer/PackDetails$DetailsItem;
.source "PackDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NonClickableItem"
.end annotation


# instance fields
.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/sprint/w/installer/PackDetails$DetailsItem;-><init>()V

    .line 326
    if-nez p1, :cond_7

    const-string p1, ""

    .end local p1
    :cond_7
    iput-object p1, p0, Lcom/sprint/w/installer/PackDetails$NonClickableItem;->title:Ljava/lang/String;

    .line 327
    const/4 v0, 0x2

    iput v0, p0, Lcom/sprint/w/installer/PackDetails$NonClickableItem;->mType:I

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/w/installer/PackDetails$NonClickableItem;->mEnabled:Z

    .line 329
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/sprint/w/installer/PackDetails$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackDetails$NonClickableItem;-><init>(Ljava/lang/String;)V

    return-void
.end method
