.class Lcom/syncmldstmo/smluiSyncSetting$1;
.super Ljava/lang/Object;
.source "smluiSyncSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smluiSyncSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smluiSyncSetting;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smluiSyncSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/syncmldstmo/smluiSyncSetting$1;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .parameter "preference"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting$1;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    #calls: Lcom/syncmldstmo/smluiSyncSetting;->smluiProfile()V
    invoke-static {v0}, Lcom/syncmldstmo/smluiSyncSetting;->access$000(Lcom/syncmldstmo/smluiSyncSetting;)V

    .line 85
    const/4 v0, 0x1

    return v0
.end method
