.class Lcom/syncmldstmo/smlMyPhonebook$2;
.super Ljava/lang/Object;
.source "smlMyPhonebook.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smlMyPhonebook;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smlMyPhonebook;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smlMyPhonebook;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/syncmldstmo/smlMyPhonebook$2;->this$0:Lcom/syncmldstmo/smlMyPhonebook;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .parameter "preference"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook$2;->this$0:Lcom/syncmldstmo/smlMyPhonebook;

    #calls: Lcom/syncmldstmo/smlMyPhonebook;->smluiSyncResult()V
    invoke-static {v0}, Lcom/syncmldstmo/smlMyPhonebook;->access$400(Lcom/syncmldstmo/smlMyPhonebook;)V

    .line 106
    const/4 v0, 0x1

    return v0
.end method
