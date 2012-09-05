.class public Lcom/android/internal/telephony/DataConnection$FailResult;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FailResult"
.end annotation


# instance fields
.field private cause:Lcom/android/internal/telephony/DataConnection$FailCause;

.field private connection:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter "c"
    .parameter "conn"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$FailResult;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$FailResult;->cause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 369
    iput-object p3, p0, Lcom/android/internal/telephony/DataConnection$FailResult;->connection:Ljava/lang/Object;

    .line 370
    return-void
.end method


# virtual methods
.method public getConnection()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$FailResult;->connection:Ljava/lang/Object;

    return-object v0
.end method

.method public getFailCause()Lcom/android/internal/telephony/DataConnection$FailCause;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$FailResult;->cause:Lcom/android/internal/telephony/DataConnection$FailCause;

    return-object v0
.end method
