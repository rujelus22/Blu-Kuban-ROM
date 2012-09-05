.class Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
.super Ljava/lang/Object;
.source "WriteMRU.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/WriteMRU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChannelGroup"
.end annotation


# instance fields
.field bwidth:Ljava/lang/String;

.field ch1:Ljava/lang/String;

.field ch2:Ljava/lang/String;

.field ch3:Ljava/lang/String;

.field fftSize:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/wimax/napid/WriteMRU;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/WriteMRU;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->this$0:Lcom/samsung/wimax/napid/WriteMRU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
