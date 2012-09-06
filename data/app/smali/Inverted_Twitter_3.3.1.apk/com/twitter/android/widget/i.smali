.class public final Lcom/twitter/android/widget/i;
.super Landroid/text/Editable$Factory;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/text/Editable$Factory;-><init>()V

    return-void
.end method

.method public static a()Landroid/text/Editable$Factory;
    .registers 1

    sget-object v0, Lcom/twitter/android/widget/g;->a:Landroid/text/Editable$Factory;

    return-object v0
.end method


# virtual methods
.method public final newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .registers 3

    new-instance v0, Lcom/twitter/android/widget/g;

    invoke-direct {v0, p1}, Lcom/twitter/android/widget/g;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method
