.class public Lcom/android/exchange/AbstractSyncService$ValidationResult;
.super Ljava/lang/Object;
.source "AbstractSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/AbstractSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValidationResult"
.end annotation


# static fields
.field static final succeeded:Lcom/android/exchange/AbstractSyncService$ValidationResult;


# instance fields
.field exception:Ljava/lang/Exception;

.field failure:I

.field reason:Ljava/lang/String;

.field success:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 149
    new-instance v0, Lcom/android/exchange/AbstractSyncService$ValidationResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/AbstractSyncService$ValidationResult;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->succeeded:Lcom/android/exchange/AbstractSyncService$ValidationResult;

    return-void
.end method

.method constructor <init>(ZILjava/lang/String;)V
    .registers 6
    .parameter "_success"
    .parameter "_failure"
    .parameter "_reason"

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->failure:I

    .line 152
    iput-object v1, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->reason:Ljava/lang/String;

    .line 153
    iput-object v1, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->exception:Ljava/lang/Exception;

    .line 156
    iput-boolean p1, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->success:Z

    .line 157
    iput p2, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->failure:I

    .line 158
    iput-object p3, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->reason:Ljava/lang/String;

    .line 159
    return-void
.end method
