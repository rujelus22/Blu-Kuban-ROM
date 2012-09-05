.class Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore$1;
.super Ljava/lang/Object;
.source "OMADM_Settings_2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;


# direct methods
.method constructor <init>(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;)V
    .registers 2
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore$1;->this$1:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "v"
    .parameter "id"

    .prologue
    .line 343
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 344
    return-void
.end method
