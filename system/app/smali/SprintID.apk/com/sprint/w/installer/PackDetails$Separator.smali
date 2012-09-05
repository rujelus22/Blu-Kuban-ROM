.class Lcom/sprint/w/installer/PackDetails$Separator;
.super Lcom/sprint/w/installer/PackDetails$DetailsItem;
.source "PackDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Separator"
.end annotation


# instance fields
.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/sprint/w/installer/PackDetails$DetailsItem;-><init>()V

    .line 315
    iput-object p1, p0, Lcom/sprint/w/installer/PackDetails$Separator;->title:Ljava/lang/String;

    .line 316
    const/4 v0, 0x1

    iput v0, p0, Lcom/sprint/w/installer/PackDetails$Separator;->mType:I

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/w/installer/PackDetails$Separator;->mEnabled:Z

    .line 318
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/sprint/w/installer/PackDetails$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackDetails$Separator;-><init>(Ljava/lang/String;)V

    return-void
.end method
