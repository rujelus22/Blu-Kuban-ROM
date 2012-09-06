.class Lcom/google/android/apps/plus/views/HangoutInviteesView$1;
.super Landroid/database/DataSetObserver;
.source "HangoutInviteesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/views/HangoutInviteesView;->setInvitees(Lcom/google/wireless/tacotruck/proto/Data$Audience;Lcom/google/android/apps/plus/content/EsAccount;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/HangoutInviteesView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/HangoutInviteesView;)V
    .registers 2
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView$1;->this$0:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView$1;->this$0:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    #calls: Lcom/google/android/apps/plus/views/HangoutInviteesView;->updateCircleNames()V
    invoke-static {v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->access$100(Lcom/google/android/apps/plus/views/HangoutInviteesView;)V

    .line 180
    return-void
.end method
