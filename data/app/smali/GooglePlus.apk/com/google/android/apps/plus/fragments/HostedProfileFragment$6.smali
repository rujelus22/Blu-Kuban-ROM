.class Lcom/google/android/apps/plus/fragments/HostedProfileFragment$6;
.super Ljava/lang/Object;
.source "HostedProfileFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->createStreamAdapter(Landroid/content/Context;Lcom/google/android/apps/plus/views/ColumnGridView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;ZLcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;Landroid/view/View;)Lcom/google/android/apps/plus/phone/StreamAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

.field final synthetic val$originalListener:Lcom/google/android/apps/plus/views/ItemClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Lcom/google/android/apps/plus/views/ItemClickListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 996
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$6;->val$originalListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpanClick(Landroid/text/style/URLSpan;)V
    .registers 3
    .parameter "span"

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$6;->val$originalListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/plus/views/ItemClickListener;->onSpanClick(Landroid/text/style/URLSpan;)V

    .line 1010
    return-void
.end method

.method public onUserImageClick(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "gaiaId"
    .parameter "authorName"

    .prologue
    .line 1000
    return-void
.end method
