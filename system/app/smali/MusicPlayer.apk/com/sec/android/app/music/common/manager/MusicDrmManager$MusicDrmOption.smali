.class public Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;
.super Ljava/lang/Object;
.source "MusicDrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/manager/MusicDrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicDrmOption"
.end annotation


# instance fields
.field public bRingtone:Z

.field public bSendAs:Z

.field final synthetic this$0:Lcom/sec/android/app/music/common/manager/MusicDrmManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/common/manager/MusicDrmManager;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1095
    iput-object p1, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;->this$0:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1096
    iput-boolean v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;->bSendAs:Z

    .line 1098
    iput-boolean v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;->bRingtone:Z

    return-void
.end method
