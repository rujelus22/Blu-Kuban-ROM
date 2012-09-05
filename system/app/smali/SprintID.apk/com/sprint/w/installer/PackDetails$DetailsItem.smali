.class abstract Lcom/sprint/w/installer/PackDetails$DetailsItem;
.super Ljava/lang/Object;
.source "PackDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DetailsItem"
.end annotation


# static fields
.field static final TYPE_CLICKABLE_ITEM:I = 0x3

.field static final TYPE_COUNT:I = 0x3

.field static final TYPE_ITEM:I = 0x2

.field static final TYPE_SEPARATOR:I = 0x1


# instance fields
.field mEnabled:Z

.field mType:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getType()I
    .registers 2

    .prologue
    .line 302
    iget v0, p0, Lcom/sprint/w/installer/PackDetails$DetailsItem;->mType:I

    return v0
.end method

.method isEnabled()Z
    .registers 2

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/sprint/w/installer/PackDetails$DetailsItem;->mEnabled:Z

    return v0
.end method
