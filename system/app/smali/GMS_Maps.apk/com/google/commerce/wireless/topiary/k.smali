.class Lcom/google/commerce/wireless/topiary/k;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/commerce/wireless/topiary/j;


# direct methods
.method constructor <init>(Lcom/google/commerce/wireless/topiary/j;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/k;->a:Lcom/google/commerce/wireless/topiary/j;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/k;->a:Lcom/google/commerce/wireless/topiary/j;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/j;->a()V

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 55
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/commerce/wireless/topiary/k;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
