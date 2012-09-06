.class public LabT;
.super Lanf;
.source "WidgetModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lanf;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 15
    const-class v0, LNW;

    invoke-virtual {p0, v0}, LabT;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LabQ;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 16
    return-void
.end method
