.class Lcom/google/googlenav/ui/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laa/d;


# instance fields
.field private final a:Landroid/text/SpannableStringBuilder;

.field private final b:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 1194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1191
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/bq;->a:Landroid/text/SpannableStringBuilder;

    .line 1195
    iput p1, p0, Lcom/google/googlenav/ui/bq;->b:I

    .line 1196
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/google/googlenav/ui/bq;->a:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/google/googlenav/ui/bq;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1201
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1190
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/bq;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 1205
    iget v0, p0, Lcom/google/googlenav/ui/bq;->b:I

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/bq;->a(Ljava/lang/CharSequence;)V

    .line 1206
    return-void
.end method
