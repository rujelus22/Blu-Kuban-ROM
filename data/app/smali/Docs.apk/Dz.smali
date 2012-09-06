.class LDz;
.super Landroid/widget/BaseAdapter;
.source "CharacterPickerDialog.java"


# instance fields
.field final synthetic a:LDy;


# direct methods
.method public constructor <init>(LDy;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, LDz;->a:LDy;

    .line 122
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 123
    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, LDz;->a:LDy;

    invoke-static {v0}, LDy;->a(LDy;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, LDz;->a:LDy;

    invoke-static {v0}, LDy;->a(LDy;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 146
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, LDz;->a:LDy;

    invoke-static {v0}, LDy;->a(LDy;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, LCB;->character_picker_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 129
    iget-object v1, p0, LDz;->a:LDy;

    invoke-static {v1}, LDy;->a(LDy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v1, p0, LDz;->a:LDy;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-object v0
.end method
