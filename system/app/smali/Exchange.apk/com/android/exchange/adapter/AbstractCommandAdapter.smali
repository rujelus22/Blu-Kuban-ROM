.class public abstract Lcom/android/exchange/adapter/AbstractCommandAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "AbstractCommandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;
    }
.end annotation


# static fields
.field protected static final MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;


# instance fields
.field protected final ROOT_FOLDER_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "serverId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/adapter/AbstractCommandAdapter;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .registers 3
    .parameter "service"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 27
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractCommandAdapter;->ROOT_FOLDER_ID:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public abstract callback(I)V
.end method

.method public abstract getCommandName()Ljava/lang/String;
.end method

.method public abstract hasChangedItems()Z
.end method
