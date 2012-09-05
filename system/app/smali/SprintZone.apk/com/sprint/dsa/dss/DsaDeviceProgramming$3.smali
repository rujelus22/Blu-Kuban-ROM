.class Lcom/sprint/dsa/dss/DsaDeviceProgramming$3;
.super Ljava/lang/Object;
.source "DsaDeviceProgramming.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/dss/DsaDeviceProgramming;
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
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$3;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$3;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    invoke-virtual {v0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->startDsaClient()V

    .line 159
    return-void
.end method
