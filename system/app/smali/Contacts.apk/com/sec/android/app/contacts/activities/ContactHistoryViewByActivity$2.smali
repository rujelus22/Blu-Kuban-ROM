.class Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity$2;
.super Ljava/lang/Object;
.source "ContactHistoryViewByActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->RegisterActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->doRevertActionMenu()V

    .line 83
    return-void
.end method
