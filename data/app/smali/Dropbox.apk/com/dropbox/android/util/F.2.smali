.class final Lcom/dropbox/android/util/F;
.super Ldbxyzptlk/c/c;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/util/E;


# direct methods
.method constructor <init>(Lcom/dropbox/android/util/E;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 10
    iput-object p1, p0, Lcom/dropbox/android/util/F;->a:Lcom/dropbox/android/util/E;

    invoke-direct {p0, p2}, Ldbxyzptlk/c/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/dropbox/android/util/D;

    check-cast p4, Lcom/dropbox/android/util/D;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dropbox/android/util/F;->a(ZLjava/lang/String;Lcom/dropbox/android/util/D;Lcom/dropbox/android/util/D;)V

    return-void
.end method

.method protected final a(ZLjava/lang/String;Lcom/dropbox/android/util/D;Lcom/dropbox/android/util/D;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-virtual {p3}, Lcom/dropbox/android/util/D;->b()V

    .line 15
    return-void
.end method
