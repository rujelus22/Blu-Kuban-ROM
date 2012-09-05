.class Lcom/sprint/smps/activities/Profile$4;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/Profile;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/Profile;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/Profile;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/Profile$4;->this$0:Lcom/sprint/smps/activities/Profile;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 357
    const-string v0, "Main Menu"

    invoke-static {v0}, Lcom/sprint/smps/activities/Profile;->dismissActivities(Ljava/lang/String;)V

    .line 358
    return-void
.end method
