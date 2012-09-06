.class Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$2;
.super Landroid/database/DataSetObserver;
.source "PeopleSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$2;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$2;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->notifyDataSetChanged()V

    .line 284
    return-void
.end method
