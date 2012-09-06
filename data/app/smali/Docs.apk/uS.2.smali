.class LuS;
.super Ljava/lang/Object;
.source "ColorPallete.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:LuP;


# direct methods
.method constructor <init>(LuP;)V
    .registers 2
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, LuS;->a:LuP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 199
    sget v0, Lup;->text_color:I

    if-ne p2, v0, :cond_10

    .line 200
    iget-object v0, p0, LuS;->a:LuP;

    iget-object v1, p0, LuS;->a:LuP;

    invoke-static {v1}, LuP;->a(LuP;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LuP;->d(Ljava/lang/String;)V

    .line 204
    :cond_f
    :goto_f
    return-void

    .line 201
    :cond_10
    sget v0, Lup;->text_highlight:I

    if-ne p2, v0, :cond_f

    .line 202
    iget-object v0, p0, LuS;->a:LuP;

    iget-object v1, p0, LuS;->a:LuP;

    invoke-static {v1}, LuP;->b(LuP;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LuP;->d(Ljava/lang/String;)V

    goto :goto_f
.end method
