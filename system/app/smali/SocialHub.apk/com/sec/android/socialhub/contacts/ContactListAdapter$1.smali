.class Lcom/sec/android/socialhub/contacts/ContactListAdapter$1;
.super Ljava/lang/Object;
.source "ContactListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/contacts/ContactListAdapter;->modeChange(Lcom/sec/android/socialhub/contacts/ContactWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/contacts/ContactListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/contacts/ContactListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$1;->this$0:Lcom/sec/android/socialhub/contacts/ContactListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$1;->this$0:Lcom/sec/android/socialhub/contacts/ContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->handleClick(Landroid/view/View;)V

    .line 238
    return-void
.end method
