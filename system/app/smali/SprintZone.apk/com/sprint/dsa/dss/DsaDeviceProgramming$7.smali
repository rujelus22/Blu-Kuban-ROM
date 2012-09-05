.class Lcom/sprint/dsa/dss/DsaDeviceProgramming$7;
.super Ljava/lang/Thread;
.source "DsaDeviceProgramming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/dss/DsaDeviceProgramming;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$7;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    .line 252
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 254
    sget-object v0, Lcom/sprint/dsa/dss/DsaSystem;->connectionManager:Lcom/sprint/internal/ConnectionManager;

    invoke-virtual {v0}, Lcom/sprint/internal/ConnectionManager;->release()V

    .line 255
    return-void
.end method
