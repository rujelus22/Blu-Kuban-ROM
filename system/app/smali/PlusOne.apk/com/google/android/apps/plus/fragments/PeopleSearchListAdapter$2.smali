.class Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$2;
.super Landroid/database/DataSetObserver;
.source "PeopleSearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$2;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$2;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->notifyDataSetChanged()V

    .line 248
    return-void
.end method
