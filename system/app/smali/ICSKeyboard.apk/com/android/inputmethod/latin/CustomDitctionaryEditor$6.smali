.class Lcom/android/inputmethod/latin/CustomDitctionaryEditor$6;
.super Ljava/lang/Thread;
.source "CustomDitctionaryEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->processAdd(Lcom/android/inputmethod/latin/CustomDialogWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/CustomDitctionaryEditor;

.field private final synthetic val$contentResolver:Landroid/content/ContentResolver;

.field private final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    .registers 5
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$6;->this$0:Lcom/android/inputmethod/latin/CustomDitctionaryEditor;

    iput-object p3, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$6;->val$contentResolver:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$6;->val$values:Landroid/content/ContentValues;

    .line 249
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$6;->val$contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$6;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 252
    return-void
.end method
