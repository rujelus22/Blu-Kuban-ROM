.class public Lcom/estrongs/android/pop/app/BookmarkListLiteActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/BookmarkListLiteActivity;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/BookmarkListLiteActivity;->requestWindowFeature(I)Z

    new-instance v0, Lcom/estrongs/android/pop/app/ar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/ar;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ar;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/BookmarkListLiteActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
