.class public abstract Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;
.super Ljava/lang/Object;
.source "FlagItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/FlagItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FlagType"
.end annotation


# instance fields
.field public final stringId:I

.field public final textEntryStringId:I


# direct methods
.method protected constructor <init>(II)V
    .registers 3
    .parameter "stringId"
    .parameter "textEntryStringId"

    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput p1, p0, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;->stringId:I

    .line 353
    iput p2, p0, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;->textEntryStringId:I

    .line 354
    return-void
.end method


# virtual methods
.method public abstract postFlag(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V
.end method

.method public requireUserComment()Z
    .registers 3

    .prologue
    .line 360
    iget v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;->textEntryStringId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
