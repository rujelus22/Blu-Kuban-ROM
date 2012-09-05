.class Lcom/google/android/apps/books/sync/CollectionsContentHandler$3;
.super Ljava/lang/Object;
.source "CollectionsContentHandler.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/sync/CollectionsContentHandler;->urlColumn(Landroid/sax/Element;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/sync/CollectionsContentHandler;

.field final synthetic val$valueName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/sync/CollectionsContentHandler;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$3;->this$0:Lcom/google/android/apps/books/sync/CollectionsContentHandler;

    iput-object p2, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$3;->val$valueName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .registers 7
    .parameter "body"

    .prologue
    .line 84
    #calls: Lcom/google/android/apps/books/sync/CollectionsContentHandler;->extractCollectionId(Ljava/lang/String;)J
    invoke-static {p1}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->access$300(Ljava/lang/String;)J

    move-result-wide v0

    .line 85
    .local v0, collectionId:J
    iget-object v2, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$3;->this$0:Lcom/google/android/apps/books/sync/CollectionsContentHandler;

    #getter for: Lcom/google/android/apps/books/sync/CollectionsContentHandler;->mValues:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->access$200(Lcom/google/android/apps/books/sync/CollectionsContentHandler;)Landroid/content/ContentValues;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$3;->val$valueName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    return-void
.end method
