.class public abstract Lcom/google/android/accounts/ContentSyncer;
.super Ljava/lang/Object;
.source "ContentSyncer.java"


# static fields
.field private static final CUPCAKE:I = 0x3

.field private static final ECLAIR:I = 0x5

.field private static final FROYO:I = 0x8

#the value of this static final field might be set in the static constructor
.field private static final SDK:I = 0x0

.field public static final SYNC_EXTRAS_DISCARD_LOCAL_DELETIONS:Ljava/lang/String; = "discard_deletions"

.field public static final SYNC_EXTRAS_DO_NOT_RETRY:Ljava/lang/String; = "do_not_retry"

.field public static final SYNC_EXTRAS_EXPEDITED:Ljava/lang/String; = "expedited"

.field public static final SYNC_EXTRAS_FORCE:Ljava/lang/String; = "force"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYNC_EXTRAS_IGNORE_BACKOFF:Ljava/lang/String; = null

.field public static final SYNC_EXTRAS_IGNORE_SETTINGS:Ljava/lang/String; = null

.field public static final SYNC_EXTRAS_INITIALIZE:Ljava/lang/String; = "initialize"

.field public static final SYNC_EXTRAS_MANUAL:Ljava/lang/String; = "force"

.field public static final SYNC_EXTRAS_OVERRIDE_TOO_MANY_DELETIONS:Ljava/lang/String; = "deletions_override"

.field public static final SYNC_EXTRAS_UPLOAD:Ljava/lang/String; = "upload"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x8

    .line 30
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/accounts/ContentSyncer;->SDK:I

    .line 44
    sget v0, Lcom/google/android/accounts/ContentSyncer;->SDK:I

    if-lt v0, v1, :cond_1b

    const-string v0, "ignore_backoff"

    :goto_10
    sput-object v0, Lcom/google/android/accounts/ContentSyncer;->SYNC_EXTRAS_IGNORE_BACKOFF:Ljava/lang/String;

    .line 53
    sget v0, Lcom/google/android/accounts/ContentSyncer;->SDK:I

    if-lt v0, v1, :cond_1e

    const-string v0, "ignore_settings"

    :goto_18
    sput-object v0, Lcom/google/android/accounts/ContentSyncer;->SYNC_EXTRAS_IGNORE_SETTINGS:Ljava/lang/String;

    return-void

    .line 44
    :cond_1b
    const-string v0, "force"

    goto :goto_10

    .line 53
    :cond_1e
    const-string v0, "force"

    goto :goto_18
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/google/android/accounts/ContentSyncer;
    .registers 4
    .parameter "context"

    .prologue
    .line 98
    sget v0, Lcom/google/android/accounts/ContentSyncer;->SDK:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_c

    .line 99
    new-instance v0, Lcom/google/android/accounts/FroyoContentSyncer;

    invoke-direct {v0, p0}, Lcom/google/android/accounts/FroyoContentSyncer;-><init>(Landroid/content/Context;)V

    .line 103
    :goto_b
    return-object v0

    .line 100
    :cond_c
    sget v0, Lcom/google/android/accounts/ContentSyncer;->SDK:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_17

    .line 101
    new-instance v0, Lcom/google/android/accounts/EclairContentSyncer;

    invoke-direct {v0, p0}, Lcom/google/android/accounts/EclairContentSyncer;-><init>(Landroid/content/Context;)V

    goto :goto_b

    .line 102
    :cond_17
    sget v0, Lcom/google/android/accounts/ContentSyncer;->SDK:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_22

    .line 103
    new-instance v0, Lcom/google/android/accounts/CupcakeContentSyncer;

    invoke-direct {v0, p0}, Lcom/google/android/accounts/CupcakeContentSyncer;-><init>(Landroid/content/Context;)V

    goto :goto_b

    .line 105
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API version not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/google/android/accounts/ContentSyncer;->SDK:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract addPeriodicSync(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
.end method

.method public abstract getIsSyncable(Lcom/google/android/accounts/Account;Ljava/lang/String;)I
.end method

.method public abstract getSyncAutomatically(Lcom/google/android/accounts/Account;Ljava/lang/String;)Z
.end method

.method public abstract removePeriodicSync(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract requestSync(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract setIsSyncable(Lcom/google/android/accounts/Account;Ljava/lang/String;I)V
.end method

.method public abstract setSyncAutomatically(Lcom/google/android/accounts/Account;Ljava/lang/String;Z)V
.end method
