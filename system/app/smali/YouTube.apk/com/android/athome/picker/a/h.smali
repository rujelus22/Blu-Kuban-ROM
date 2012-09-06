.class final Lcom/android/athome/picker/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/android/athome/picker/a/a;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/a/a;)V
    .registers 2
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/athome/picker/a/h;->a:Lcom/android/athome/picker/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 626
    invoke-static {p1}, Lcom/android/athome/picker/media/q;->b(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/athome/picker/media/q;->b(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
