.class Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;
.super Ljava/lang/Object;
.source "AbstractCommandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/AbstractCommandAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderCommandResponse"
.end annotation


# instance fields
.field public mServerId:Ljava/lang/String;

.field public mStatus:I

.field public mSyncKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/exchange/adapter/AbstractCommandAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/AbstractCommandAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->this$0:Lcom/android/exchange/adapter/AbstractCommandAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method
