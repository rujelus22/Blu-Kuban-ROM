.class final Lcom/google/android/apps/plus/content/EsEventData$1;
.super Ljava/lang/Object;
.source "EsEventData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/content/EsEventData;->refreshEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$ownerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/google/android/apps/plus/content/EsEventData$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/apps/plus/content/EsEventData$1;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iput-object p3, p0, Lcom/google/android/apps/plus/content/EsEventData$1;->val$eventId:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/plus/content/EsEventData$1;->val$ownerId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/apps/plus/content/EsEventData$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/content/EsEventData$1;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/content/EsEventData$1;->val$eventId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/content/EsEventData$1;->val$ownerId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->getEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void
.end method
