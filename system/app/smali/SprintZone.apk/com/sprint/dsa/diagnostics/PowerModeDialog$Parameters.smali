.class public Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;
.super Ljava/lang/Object;
.source "PowerModeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/diagnostics/PowerModeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameters"
.end annotation


# instance fields
.field public config:Lcom/sprint/dsa/diagnostics/PowerConfig;

.field public description:Ljava/lang/String;

.field public oldConfig:Lcom/sprint/dsa/diagnostics/PowerConfig;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sprint/dsa/diagnostics/PowerConfig;Lcom/sprint/dsa/diagnostics/PowerConfig;)V
    .registers 5
    .parameter "title"
    .parameter "description"
    .parameter "config"
    .parameter "oldConfig"

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;->title:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;->description:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;->config:Lcom/sprint/dsa/diagnostics/PowerConfig;

    .line 156
    iput-object p4, p0, Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;->oldConfig:Lcom/sprint/dsa/diagnostics/PowerConfig;

    .line 157
    return-void
.end method
