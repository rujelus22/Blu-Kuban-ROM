.class public Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionSettings"
.end annotation


# instance fields
.field public audioTransitionType:I

.field public videoTransitionType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1293
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
