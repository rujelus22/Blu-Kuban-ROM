.class Lcom/sprint/smps/SMPSClient$SMPSStartup$1$2;
.super Ljava/lang/Object;
.source "SMPSClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/SMPSClient$SMPSStartup$1;->serverError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sprint/smps/SMPSClient$SMPSStartup$1;


# direct methods
.method constructor <init>(Lcom/sprint/smps/SMPSClient$SMPSStartup$1;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/SMPSClient$SMPSStartup$1$2;->this$2:Lcom/sprint/smps/SMPSClient$SMPSStartup$1;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 106
    const-string v0, ""

    invoke-static {v0}, Lcom/sprint/smps/activities/ActivityHelper;->dismissActivities(Ljava/lang/String;)V

    .line 107
    return-void
.end method
