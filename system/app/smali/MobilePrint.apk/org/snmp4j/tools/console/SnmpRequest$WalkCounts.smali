.class Lorg/snmp4j/tools/console/SnmpRequest$WalkCounts;
.super Ljava/lang/Object;
.source "SnmpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/tools/console/SnmpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WalkCounts"
.end annotation


# instance fields
.field public objects:I

.field public requests:I

.field private final this$0:Lorg/snmp4j/tools/console/SnmpRequest;


# direct methods
.method constructor <init>(Lorg/snmp4j/tools/console/SnmpRequest;)V
    .registers 2
    .parameter

    .prologue
    .line 1428
    iput-object p1, p0, Lorg/snmp4j/tools/console/SnmpRequest$WalkCounts;->this$0:Lorg/snmp4j/tools/console/SnmpRequest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
