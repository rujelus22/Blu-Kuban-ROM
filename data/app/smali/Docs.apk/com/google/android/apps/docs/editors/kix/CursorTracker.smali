.class public Lcom/google/android/apps/docs/editors/kix/CursorTracker;
.super Ljava/lang/Object;
.source "CursorTracker.java"


# instance fields
.field private final a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/KixEditText;)V
    .registers 3
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker;->a:Ljava/util/Map;

    .line 89
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/docs/editors/kix/CursorTracker;)Lcom/google/android/apps/docs/editors/kix/KixEditText;
    .registers 2
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;

    .line 127
    if-eqz v0, :cond_13

    .line 128
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b()Landroid/text/Editable;

    move-result-object v1

    .line 129
    invoke-interface {v1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 132
    :cond_13
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;

    .line 114
    if-nez v0, :cond_b

    .line 119
    :goto_a
    return-void

    .line 118
    :cond_b
    invoke-virtual {v0, p3, p2}, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;->a(II)V

    goto :goto_a
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;

    .line 100
    if-eqz v0, :cond_b

    .line 106
    :goto_a
    return-void

    .line 104
    :cond_b
    new-instance v0, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;

    invoke-direct {v0, p0, p3, p2}, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;-><init>(Lcom/google/android/apps/docs/editors/kix/CursorTracker;ILjava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method
