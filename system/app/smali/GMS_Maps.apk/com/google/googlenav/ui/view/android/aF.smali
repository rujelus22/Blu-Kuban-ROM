.class Lcom/google/googlenav/ui/view/android/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/android/ab;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/af;->a:Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;Lcom/google/googlenav/ui/view/android/ae;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/af;-><init>(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/android/CheckableContainer;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/af;->a:Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 179
    :goto_9
    return-void

    .line 171
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/af;->a:Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;Z)Z

    .line 172
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/af;->a:Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->c(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    .line 173
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/af;->a:Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/af;->a:Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->c(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;IZ)V

    .line 175
    :cond_24
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/af;->a:Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;Z)Z

    .line 177
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->getId()I

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/af;->a:Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;I)V

    goto :goto_9
.end method
