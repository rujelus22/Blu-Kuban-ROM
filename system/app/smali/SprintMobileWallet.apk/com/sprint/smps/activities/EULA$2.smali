.class Lcom/sprint/smps/activities/EULA$2;
.super Ljava/lang/Object;
.source "EULA.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/EULA;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/EULA;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/EULA;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/EULA$2;->this$0:Lcom/sprint/smps/activities/EULA;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 88
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    const/4 v0, 0x1

    return v0
.end method
