.class Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener$1;
.super Ljava/lang/Object;
.source "EmailDocSearchQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;


# direct methods
.method constructor <init>(Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener$1;->this$1:Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener$1;->this$1:Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;

    iget-object v1, v1, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    #getter for: Lcom/android/email/activity/EmailDocSearchQuery;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;
    invoke-static {v1}, Lcom/android/email/activity/EmailDocSearchQuery;->access$100(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/email/EmailSearchAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/email/EmailSearchAdapter;->search(Z)I
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d

    .line 117
    :cond_c
    :goto_c
    return-void

    .line 109
    :catch_d
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Protocol version not supported"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_c
.end method