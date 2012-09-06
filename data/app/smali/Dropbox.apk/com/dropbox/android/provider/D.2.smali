.class final Lcom/dropbox/android/provider/D;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field public a:Lcom/dropbox/android/filemanager/L;

.field public b:Landroid/database/Cursor;

.field public c:Ljava/util/Map;

.field final synthetic d:Lcom/dropbox/android/provider/ZipperedMediaProvider;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/provider/ZipperedMediaProvider;Lcom/dropbox/android/filemanager/L;Landroid/database/Cursor;Ljava/util/Map;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/dropbox/android/provider/D;->d:Lcom/dropbox/android/provider/ZipperedMediaProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/dropbox/android/provider/D;->a:Lcom/dropbox/android/filemanager/L;

    .line 109
    iput-object p3, p0, Lcom/dropbox/android/provider/D;->b:Landroid/database/Cursor;

    .line 110
    iput-object p4, p0, Lcom/dropbox/android/provider/D;->c:Ljava/util/Map;

    .line 111
    return-void
.end method
