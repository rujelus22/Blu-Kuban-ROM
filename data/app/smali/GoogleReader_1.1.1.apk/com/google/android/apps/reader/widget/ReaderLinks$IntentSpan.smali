.class Lcom/google/android/apps/reader/widget/ReaderLinks$IntentSpan;
.super Landroid/text/style/ClickableSpan;
.source "ReaderLinks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/widget/ReaderLinks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentSpan"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/ReaderLinks$IntentSpan;->mIntent:Landroid/content/Intent;

    .line 130
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "widget"

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 135
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ReaderLinks$IntentSpan;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void
.end method
