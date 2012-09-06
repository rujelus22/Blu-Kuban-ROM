.class final Lcom/twitter/android/provider/j;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Lcom/twitter/android/provider/i;


# direct methods
.method private constructor <init>(Lcom/twitter/android/provider/i;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/provider/j;->a:Lcom/twitter/android/provider/i;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/provider/i;Lcom/twitter/android/provider/h;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twitter/android/provider/j;-><init>(Lcom/twitter/android/provider/i;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/provider/j;->a:Lcom/twitter/android/provider/i;

    invoke-virtual {v0}, Lcom/twitter/android/provider/i;->notifyChanged()V

    return-void
.end method
