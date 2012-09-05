.class public Lcom/infraware/office/evengine/EV$SHEET_INFO;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/evengine/EV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SHEET_INFO"
.end annotation


# instance fields
.field public bFreeze:I

.field public bPageBreak:I

.field public bProtectSheet:I

.field public szSheetName:Ljava/lang/String;

.field final synthetic this$0:Lcom/infraware/office/evengine/EV;


# direct methods
.method public constructor <init>(Lcom/infraware/office/evengine/EV;)V
    .registers 3
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/infraware/office/evengine/EV$SHEET_INFO;->this$0:Lcom/infraware/office/evengine/EV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$SHEET_INFO;->szSheetName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .prologue
    .line 602
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$SHEET_INFO;->szSheetName:Ljava/lang/String;

    .line 603
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/office/evengine/EV$SHEET_INFO;->bPageBreak:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$SHEET_INFO;->bFreeze:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$SHEET_INFO;->bProtectSheet:I

    .line 604
    return-void
.end method
