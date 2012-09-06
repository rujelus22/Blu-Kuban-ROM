.class Lcom/android/inputmethod/latin/CustomDitctionaryEditor$5;
.super Ljava/lang/Thread;
.source "CustomDitctionaryEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->processEdit(Lcom/android/inputmethod/latin/CustomDialogWrapper;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/CustomDitctionaryEditor;

.field private final synthetic val$args:[Ljava/lang/String;

.field private final synthetic val$contentResolver:Landroid/content/ContentResolver;

.field private final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/ContentValues;[Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$5;->this$0:Lcom/android/inputmethod/latin/CustomDitctionaryEditor;

    iput-object p3, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$5;->val$contentResolver:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$5;->val$values:Landroid/content/ContentValues;

    iput-object p5, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$5;->val$args:[Ljava/lang/String;

    .line 206
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$5;->val$contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$5;->val$values:Landroid/content/ContentValues;

    const-string v3, "_ID=?"

    iget-object v4, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$5;->val$args:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 209
    return-void
.end method
